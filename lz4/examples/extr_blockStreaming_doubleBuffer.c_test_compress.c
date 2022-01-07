
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmpBuf ;
typedef int LZ4_stream_t ;
typedef int FILE ;


 int BLOCK_BYTES ;
 int LZ4_COMPRESSBOUND (int) ;
 int LZ4_compress_fast_continue (int *,char* const,char*,int const,int,int) ;
 int LZ4_initStream (int *,int) ;
 scalar_t__ read_bin (int *,char* const,int) ;
 int write_bin (int *,char*,size_t) ;
 int write_int (int *,int const) ;

void test_compress(FILE* outFp, FILE* inpFp)
{
    LZ4_stream_t lz4Stream_body;
    LZ4_stream_t* lz4Stream = &lz4Stream_body;

    char inpBuf[2][BLOCK_BYTES];
    int inpBufIndex = 0;

    LZ4_initStream(lz4Stream, sizeof (*lz4Stream));

    for(;;) {
        char* const inpPtr = inpBuf[inpBufIndex];
        const int inpBytes = (int) read_bin(inpFp, inpPtr, BLOCK_BYTES);
        if(0 == inpBytes) {
            break;
        }

        {
            char cmpBuf[LZ4_COMPRESSBOUND(BLOCK_BYTES)];
            const int cmpBytes = LZ4_compress_fast_continue(
                lz4Stream, inpPtr, cmpBuf, inpBytes, sizeof(cmpBuf), 1);
            if(cmpBytes <= 0) {
                break;
            }
            write_int(outFp, cmpBytes);
            write_bin(outFp, cmpBuf, (size_t) cmpBytes);
        }

        inpBufIndex = (inpBufIndex + 1) % 2;
    }

    write_int(outFp, 0);
}
