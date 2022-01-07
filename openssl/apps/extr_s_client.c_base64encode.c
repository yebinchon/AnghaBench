
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_EncodeBlock (unsigned char*,void const*,size_t) ;
 char* app_malloc (size_t,char*) ;
 int assert (int) ;

__attribute__((used)) static char *base64encode (const void *buf, size_t len)
{
    int i;
    size_t outl;
    char *out;


    outl = (len / 3);
    if (len % 3 > 0)
        outl++;
    outl <<= 2;
    out = app_malloc(outl + 1, "base64 encode buffer");

    i = EVP_EncodeBlock((unsigned char *)out, buf, len);
    assert(i <= (int)outl);
    if (i < 0)
        *out = '\0';
    return out;
}
