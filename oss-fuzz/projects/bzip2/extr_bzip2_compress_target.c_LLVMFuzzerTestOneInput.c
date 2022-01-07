
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BZ2_bzBuffToBuffCompress (char*,unsigned int*,char*,size_t,int,int ,int) ;
 int BZ2_bzBuffToBuffDecompress (char*,unsigned int*,char*,unsigned int,int,int ) ;
 int BZ_OK ;
 int assert (int) ;
 int fprintf (int ,char*,int) ;
 int free (char*) ;
 char* malloc (unsigned int) ;
 scalar_t__ memcmp (int const*,char*,size_t) ;
 int stdout ;

int
LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    int r, blockSize100k, workFactor, small;
    unsigned int nZ, nOut;
    nZ = size + 600 + (size / 100);
    char *zbuf = malloc(nZ);

    blockSize100k = (size % 11) + 1;
    if (blockSize100k > 9) {
        blockSize100k = 9;
    }
    workFactor = size % 251;


    r = BZ2_bzBuffToBuffCompress(zbuf, &nZ, (char *)data, size,
            blockSize100k, 0, workFactor);
    if (r != BZ_OK) {



        free(zbuf);
        return 0;
    }

    nOut = size*2;
    char *outbuf = malloc(nOut);
    small = size % 2;
    r = BZ2_bzBuffToBuffDecompress(outbuf, &nOut, zbuf, nZ, small,
                          0);
    if (r != BZ_OK) {



        free(zbuf);
        free(outbuf);
        return 0;
    }

    assert(nOut == size);
    assert(memcmp(data, outbuf, size) == 0);
    free(zbuf);
    free(outbuf);
    return 0;
}
