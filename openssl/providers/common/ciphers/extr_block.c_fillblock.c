
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

size_t fillblock(unsigned char *buf, size_t *buflen, size_t blocksize,
                 const unsigned char **in, size_t *inlen)
{
    size_t blockmask = ~(blocksize - 1);

    assert(*buflen <= blocksize);
    assert(blocksize > 0 && (blocksize & (blocksize - 1)) == 0);

    if (*buflen != blocksize && (*buflen != 0 || *inlen < blocksize)) {
        size_t bufremain = blocksize - *buflen;

        if (*inlen < bufremain)
            bufremain = *inlen;
        memcpy(buf + *buflen, *in, bufremain);
        *in += bufremain;
        *inlen -= bufremain;
        *buflen += bufremain;
    }

    return *inlen & blockmask;
}
