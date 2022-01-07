
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static size_t last_blocks_correction_nist(const unsigned char *in,
                                          unsigned char *out, size_t len)
{
    size_t tail;

    if ((tail = len % 16) == 0)
        tail = 16;
    len -= 16 + tail;
    memcpy(out, in, len);

    memcpy(out + len, in + len + 16, tail);
    memcpy(out + len + tail, in + len, 16);
    len += 16 + tail;
    tail = 16;

    return tail;
}
