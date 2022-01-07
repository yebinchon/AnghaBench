
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BZ2_bzBuffToBuffDecompress (char*,unsigned int*,char*,size_t,int,int ) ;
 int BZ_OK ;
 int fprintf (int ,char*,int) ;
 int free (char*) ;
 char* malloc (unsigned int) ;
 int stdout ;

int
LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    int r, small;
    unsigned int nZ, nOut;


    nOut = size*2;
    char *outbuf = malloc(nOut);
    small = size % 2;
    r = BZ2_bzBuffToBuffDecompress(outbuf, &nOut, (char *)data, size,
            small, 0);

    if (r != BZ_OK) {



    }
    free(outbuf);
    return 0;
}
