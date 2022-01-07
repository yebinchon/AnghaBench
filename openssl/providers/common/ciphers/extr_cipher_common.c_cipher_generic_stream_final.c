
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cipher_generic_stream_final(void *vctx, unsigned char *out, size_t *outl,
                                size_t outsize)
{
    *outl = 0;
    return 1;
}
