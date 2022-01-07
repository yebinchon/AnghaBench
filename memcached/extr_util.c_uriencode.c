
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,int *,int) ;
 int ** uriencode_map ;

bool uriencode(const char *src, char *dst, const size_t srclen, const size_t dstlen) {
    int x;
    size_t d = 0;
    for (x = 0; x < srclen; x++) {
        if (d + 4 > dstlen)
            return 0;
        if (uriencode_map[(unsigned char) src[x]] != ((void*)0)) {
            memcpy(&dst[d], uriencode_map[(unsigned char) src[x]], 3);
            d += 3;
        } else {
            dst[d] = src[x];
            d++;
        }
    }
    dst[d] = '\0';
    return 1;
}
