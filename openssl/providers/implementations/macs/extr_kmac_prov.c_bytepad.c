
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int bytepad(unsigned char *out, int *out_len,
                   const unsigned char *in1, int in1_len,
                   const unsigned char *in2, int in2_len, int w)
{
    int len;
    unsigned char *p = out;
    int sz = w;


    *p++ = 1;
    *p++ = w;

    memcpy(p, in1, in1_len);
    p += in1_len;

    if (in2 != ((void*)0) && in2_len > 0) {
        memcpy(p, in2, in2_len);
        p += in2_len;
    }

    len = p - out;
    while (len > sz) {
        sz += w;
    }

    memset(p, 0, sz - len);
    *out_len = sz;
    return 1;
}
