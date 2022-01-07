
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
base64_encode(void *vdst, size_t sizeof_dst,
              const void *vsrc, size_t sizeof_src)
{
    static const char *b64 =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        "abcdefghijklmnopqrstuvwxyz"
        "0123456789"
        "+/";
    size_t i = 0;
    size_t d = 0;
    unsigned char *dst = (unsigned char *)vdst;
    const unsigned char *src = (const unsigned char *)vsrc;


    while (i + 3 <= sizeof_src) {
        unsigned n;


        if (d + 4 > sizeof_dst)
            return d;


        n = src[i]<<16 | src[i+1]<<8 | src[i+2];
        dst[d+0] = b64[ (n>>18) & 0x3F ];
        dst[d+1] = b64[ (n>>12) & 0x3F ];
        dst[d+2] = b64[ (n>> 6) & 0x3F ];
        dst[d+3] = b64[ (n>> 0) & 0x3F ];

        i += 3;
        d += 4;
    }



    if (i + 2 <= sizeof_src && d + 4 <= sizeof_dst) {
        unsigned n = src[i]<<16 | src[i+1]<<8;
        dst[d+0] = b64[ (n>>18) & 0x3F ];
        dst[d+1] = b64[ (n>>12) & 0x3F ];
        dst[d+2] = b64[ (n>> 6) & 0x3F ];
        dst[d+3] = '=';
        d += 4;
    } else if (i + 1 <= sizeof_src && d + 4 <= sizeof_dst) {
        unsigned n = src[i]<<16;
        dst[d+0] = b64[ (n>>18) & 0x3F ];
        dst[d+1] = b64[ (n>>12) & 0x3F ];
        dst[d+2] = '=';
        dst[d+3] = '=';
        d += 4;
    }

    return d;
}
