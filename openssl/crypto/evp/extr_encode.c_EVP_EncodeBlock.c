
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int evp_encodeblock_int (int *,unsigned char*,unsigned char const*,int) ;

int EVP_EncodeBlock(unsigned char *t, const unsigned char *f, int dlen)
{
    return evp_encodeblock_int(((void*)0), t, f, dlen);
}
