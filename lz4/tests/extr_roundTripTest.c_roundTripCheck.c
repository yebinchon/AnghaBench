
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t LZ4_compressBound (int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (void* const) ;
 void* malloc (size_t const) ;
 int roundTripTest (void* const,size_t const,void* const,size_t const,void const*,size_t,int) ;
 int stderr ;

__attribute__((used)) static void roundTripCheck(const void* srcBuff, size_t srcSize, int clevel)
{
    size_t const cBuffSize = LZ4_compressBound((int)srcSize);
    void* const cBuff = malloc(cBuffSize);
    void* const rBuff = malloc(cBuffSize);

    if (!cBuff || !rBuff) {
        fprintf(stderr, "not enough memory ! \n");
        exit(1);
    }

    roundTripTest(rBuff, cBuffSize,
                  cBuff, cBuffSize,
                  srcBuff, srcSize,
                  clevel);

    free(rBuff);
    free(cBuff);
}
