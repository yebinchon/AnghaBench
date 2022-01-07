
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int compare (int *,int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*) ;
 int test_compress (int *,int *,int,int) ;
 int test_decompress (int *,int *,int,int) ;

int main(int argc, char* argv[])
{
    enum {
        MESSAGE_MAX_BYTES = 1024,
        RING_BUFFER_BYTES = 1024 * 256 + MESSAGE_MAX_BYTES,
    };

    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };

    if (argc < 2)
    {
        printf("Please specify input filename\n");
        return 0;
    }

    snprintf(inpFilename, 256, "%s", argv[1]);
    snprintf(lz4Filename, 256, "%s.lz4s", argv[1]);
    snprintf(decFilename, 256, "%s.lz4s.dec", argv[1]);

    printf("inp = [%s]\n", inpFilename);
    printf("lz4 = [%s]\n", lz4Filename);
    printf("dec = [%s]\n", decFilename);


    {
        FILE* inpFp = fopen(inpFilename, "rb");
        FILE* outFp = fopen(lz4Filename, "wb");

        test_compress(outFp, inpFp, MESSAGE_MAX_BYTES, RING_BUFFER_BYTES);

        fclose(outFp);
        fclose(inpFp);
    }


    {
        FILE* inpFp = fopen(lz4Filename, "rb");
        FILE* outFp = fopen(decFilename, "wb");

        test_decompress(outFp, inpFp, MESSAGE_MAX_BYTES, RING_BUFFER_BYTES);

        fclose(outFp);
        fclose(inpFp);
    }


    {
        FILE* inpFp = fopen(inpFilename, "rb");
        FILE* decFp = fopen(decFilename, "rb");

        const int cmp = compare(inpFp, decFp);
        if (0 == cmp)
            printf("Verify : OK\n");
        else
            printf("Verify : NG\n");

        fclose(decFp);
        fclose(inpFp);
    }

    return 0;
}
