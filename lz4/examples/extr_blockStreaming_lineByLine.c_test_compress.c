
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int LZ4_stream_t ;
typedef int FILE ;


 size_t LZ4_COMPRESSBOUND (size_t) ;
 int LZ4_compress_fast_continue (int * const,char* const,char* const,int,size_t const,int) ;
 int * LZ4_createStream () ;
 int LZ4_freeStream (int * const) ;
 int fgets (char* const,int,int *) ;
 int free (char* const) ;
 scalar_t__ malloc (size_t const) ;
 size_t rand () ;
 scalar_t__ read_bin (int *,char* const,int const) ;
 scalar_t__ strlen (char* const) ;
 int write_bin (int *,char* const,int const) ;
 int write_uint16 (int *,int ) ;

__attribute__((used)) static void test_compress(
    FILE* outFp,
    FILE* inpFp,
    size_t messageMaxBytes,
    size_t ringBufferBytes)
{
    LZ4_stream_t* const lz4Stream = LZ4_createStream();
    const size_t cmpBufBytes = LZ4_COMPRESSBOUND(messageMaxBytes);
    char* const cmpBuf = (char*) malloc(cmpBufBytes);
    char* const inpBuf = (char*) malloc(ringBufferBytes);
    int inpOffset = 0;

    for ( ; ; )
    {
        char* const inpPtr = &inpBuf[inpOffset];
        int inpBytes = 0;
        if (!fgets(inpPtr, (int) messageMaxBytes, inpFp))
            break;
        inpBytes = (int) strlen(inpPtr);


        {
            const int cmpBytes = LZ4_compress_fast_continue(
                lz4Stream, inpPtr, cmpBuf, inpBytes, cmpBufBytes, 1);
            if (cmpBytes <= 0) break;
            write_uint16(outFp, (uint16_t) cmpBytes);
            write_bin(outFp, cmpBuf, cmpBytes);


            inpOffset += inpBytes;
            if ((size_t)inpOffset >= ringBufferBytes - messageMaxBytes) inpOffset = 0;
        }
    }
    write_uint16(outFp, 0);

    free(inpBuf);
    free(cmpBuf);
    LZ4_freeStream(lz4Stream);
}
