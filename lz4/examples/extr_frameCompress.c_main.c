
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; double size_in; scalar_t__ size_out; } ;
typedef TYPE_1__ compressResult_t ;
typedef int FILE ;


 int compareFiles (int * const,int * const) ;
 TYPE_1__ compress_file (int * const,int * const) ;
 int decompress_file (int * const,int * const) ;
 int fclose (int * const) ;
 int * fopen (char*,char*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char const*) ;

int main(int argc, const char **argv) {
    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };

    if (argc < 2) {
        printf("Please specify input filename\n");
        return 0;
    }

    snprintf(inpFilename, 256, "%s", argv[1]);
    snprintf(lz4Filename, 256, "%s.lz4", argv[1]);
    snprintf(decFilename, 256, "%s.lz4.dec", argv[1]);

    printf("inp = [%s]\n", inpFilename);
    printf("lz4 = [%s]\n", lz4Filename);
    printf("dec = [%s]\n", decFilename);


    { FILE* const inpFp = fopen(inpFilename, "rb");
        FILE* const outFp = fopen(lz4Filename, "wb");

        printf("compress : %s -> %s\n", inpFilename, lz4Filename);
        compressResult_t const ret = compress_file(inpFp, outFp);

        fclose(outFp);
        fclose(inpFp);

        if (ret.error) {
            printf("compress : failed with code %i\n", ret.error);
            return ret.error;
        }
        printf("%s: %zu → %zu bytes, %.1f%%\n",
            inpFilename,
            (size_t)ret.size_in, (size_t)ret.size_out,
            (double)ret.size_out / ret.size_in * 100);
        printf("compress : done\n");
    }


    { FILE* const inpFp = fopen(lz4Filename, "rb");
        FILE* const outFp = fopen(decFilename, "wb");

        printf("decompress : %s -> %s\n", lz4Filename, decFilename);
        int const ret = decompress_file(inpFp, outFp);

        fclose(outFp);
        fclose(inpFp);

        if (ret) {
            printf("decompress : failed with code %i\n", ret);
            return ret;
        }
        printf("decompress : done\n");
    }


    { FILE* const inpFp = fopen(inpFilename, "rb");
        FILE* const decFp = fopen(decFilename, "rb");

        printf("verify : %s <-> %s\n", inpFilename, decFilename);
        int const cmp = compareFiles(inpFp, decFp);

        fclose(decFp);
        fclose(inpFp);

        if (cmp) {
            printf("corruption detected : decompressed file differs from original\n");
            return cmp;
        }
        printf("verify : OK\n");
    }

    return 0;
}
