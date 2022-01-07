
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static size_t last_blocks_correction(const unsigned char *in,
                                     unsigned char *out, size_t len)
{
    size_t tail;

    memcpy(out, in, len);
    if ((tail = len % 16) == 0)
        tail = 16;
    tail += 16;

    return tail;
}
