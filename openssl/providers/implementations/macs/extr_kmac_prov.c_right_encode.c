
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_encode_size (size_t) ;

__attribute__((used)) static int right_encode(unsigned char *out, int *out_len, size_t bits)
{
    unsigned int len = get_encode_size(bits);
    int i;


    if (len > 0xFF)
        return 0;


    for (i = len - 1; i >= 0; --i) {
        out[i] = (unsigned char)(bits & 0xFF);
        bits >>= 8;
    }

    out[len] = (unsigned char)len;


    *out_len = len + 1;
    return 1;
}
