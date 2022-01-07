
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int compare (int * const,int * const) ;
 int fclose (int * const) ;
 int * fopen (char*,char*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,...) ;
 int test_compress (int * const,int * const) ;
 int test_decompress (int * const,int * const) ;

int main(int argc, char** argv)
{
    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };

    if (argc < 2) {
        printf("Please specify input filename\n");
        return 0;
    }

    snprintf(inpFilename, 256, "%s", argv[1]);
    snprintf(lz4Filename, 256, "%s.lz4s-%d", argv[1], 0);
    snprintf(decFilename, 256, "%s.lz4s-%d.dec", argv[1], 0);

    printf("inp = [%s]\n", inpFilename);
    printf("lz4 = [%s]\n", lz4Filename);
    printf("dec = [%s]\n", decFilename);


    { FILE* const inpFp = fopen(inpFilename, "rb");
        FILE* const outFp = fopen(lz4Filename, "wb");

        test_compress(outFp, inpFp);

        fclose(outFp);
        fclose(inpFp);
    }


    { FILE* const inpFp = fopen(lz4Filename, "rb");
        FILE* const outFp = fopen(decFilename, "wb");

        test_decompress(outFp, inpFp);

        fclose(outFp);
        fclose(inpFp);
    }


    { FILE* const inpFp = fopen(inpFilename, "rb");
        FILE* const decFp = fopen(decFilename, "rb");

        const int cmp = compare(inpFp, decFp);
        if (0 == cmp) {
            printf("Verify : OK\n");
        } else {
            printf("Verify : NG\n");
        }

        fclose(decFp);
        fclose(inpFp);
    }

    return 0;
}
