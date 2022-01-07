
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t compare (int * const,int * const) ;
 int fclose (int * const) ;
 int * fopen (char*,char*) ;
 int getchar () ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int strcmp (char const*,char*) ;
 int test_compress (int * const,int * const) ;
 int test_decompress (int * const,int * const) ;

int main(int argc, const char** argv)
{
    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };
    unsigned fileID = 1;
    unsigned pause = 0;


    if(argc < 2) {
        printf("Please specify input filename\n");
        return 0;
    }

    if (!strcmp(argv[1], "-p")) { pause = 1; fileID = 2; }

    snprintf(inpFilename, 256, "%s", argv[fileID]);
    snprintf(lz4Filename, 256, "%s.lz4s-%d", argv[fileID], 9);
    snprintf(decFilename, 256, "%s.lz4s-%d.dec", argv[fileID], 9);

    printf("input   = [%s]\n", inpFilename);
    printf("lz4     = [%s]\n", lz4Filename);
    printf("decoded = [%s]\n", decFilename);


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

        const size_t cmp = compare(inpFp, decFp);
        if(0 == cmp) {
            printf("Verify : OK\n");
        } else {
            printf("Verify : NG : error at pos %u\n", (unsigned)cmp-1);
        }

        fclose(decFp);
        fclose(inpFp);
    }

    if (pause) {
        int unused;
        printf("Press enter to continue ...\n");
        unused = getchar(); (void)unused;
    }

    return 0;
}
