
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mymalloc (int) ;

char *
CGI_encode_hex(const void *p, int len) {
    const unsigned char *in = p;
    int i, k;
    char *out;
    const char hexdigit[] = "0123456789ABCDEF";

    if (in == 0 || len <= 0) {
        return 0;
    }
    out = mymalloc(len * 2 + 1);
    for (i = k = 0; i < len; i++) {
        out[k++] = hexdigit[in[i] >> 4];
        out[k++] = hexdigit[in[i] & 0xf];
    }
    out[k] = 0;
    return out;
}
