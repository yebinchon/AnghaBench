
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BLOCK_BYTES ;
 int DICTIONARY_BYTES ;
 int SEEK_SET ;
 int atoi (char*) ;
 int compare (int *,int *,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,...) ;
 scalar_t__ read_bin (int *,char*,int) ;
 int seek_bin (int *,int,int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 int test_compress (int *,int *,char*,int) ;
 int test_decompress (int *,int *,char*,int,int,int) ;

int main(int argc, char* argv[])
{
    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };
    char dictFilename[256] = { 0 };
    int offset;
    int length;
    char dict[DICTIONARY_BYTES];
    int dictSize;

    if(argc < 5) {
        printf("Usage: %s input dictionary offset length", argv[0]);
        return 0;
    }

    snprintf(inpFilename, 256, "%s", argv[1]);
    snprintf(lz4Filename, 256, "%s.lz4s-%d", argv[1], BLOCK_BYTES);
    snprintf(decFilename, 256, "%s.lz4s-%d.dec", argv[1], BLOCK_BYTES);
    snprintf(dictFilename, 256, "%s", argv[2]);
    offset = atoi(argv[3]);
    length = atoi(argv[4]);

    printf("inp    = [%s]\n", inpFilename);
    printf("lz4    = [%s]\n", lz4Filename);
    printf("dec    = [%s]\n", decFilename);
    printf("dict   = [%s]\n", dictFilename);
    printf("offset = [%d]\n", offset);
    printf("length = [%d]\n", length);


    {
        FILE* dictFp = fopen(dictFilename, "rb");
        dictSize = (int)read_bin(dictFp, dict, DICTIONARY_BYTES);
        fclose(dictFp);
    }


    {
        FILE* inpFp = fopen(inpFilename, "rb");
        FILE* outFp = fopen(lz4Filename, "wb");

        printf("compress : %s -> %s\n", inpFilename, lz4Filename);
        test_compress(outFp, inpFp, dict, dictSize);
        printf("compress : done\n");

        fclose(outFp);
        fclose(inpFp);
    }


    {
        FILE* inpFp = fopen(lz4Filename, "rb");
        FILE* outFp = fopen(decFilename, "wb");

        printf("decompress : %s -> %s\n", lz4Filename, decFilename);
        test_decompress(outFp, inpFp, dict, DICTIONARY_BYTES, offset, length);
        printf("decompress : done\n");

        fclose(outFp);
        fclose(inpFp);
    }


    {
        FILE* inpFp = fopen(inpFilename, "rb");
        FILE* decFp = fopen(decFilename, "rb");
        seek_bin(inpFp, offset, SEEK_SET);

        printf("verify : %s <-> %s\n", inpFilename, decFilename);
        const int cmp = compare(inpFp, decFp, length);
        if(0 == cmp) {
            printf("verify : OK\n");
        } else {
            printf("verify : NG\n");
        }

        fclose(decFp);
        fclose(inpFp);
    }

    return 0;
}
