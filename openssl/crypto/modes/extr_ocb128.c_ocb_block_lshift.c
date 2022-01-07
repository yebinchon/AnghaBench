
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ocb_block_lshift(const unsigned char *in, size_t shift,
                             unsigned char *out)
{
    int i;
    unsigned char carry = 0, carry_next;

    for (i = 15; i >= 0; i--) {
        carry_next = in[i] >> (8 - shift);
        out[i] = (in[i] << shift) | carry;
        carry = carry_next;
    }
}
