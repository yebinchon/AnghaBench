
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int* buf_overlap; int samples_overlap; scalar_t__ buf_queue; int * table_blend; } ;
typedef int int32_t ;
typedef int int16_t ;



__attribute__((used)) static void output_overlap_s16(struct priv *s, void *buf_out,
                               int bytes_off)
{
    int16_t *pout = buf_out;
    int32_t *pb = s->table_blend;
    int16_t *po = s->buf_overlap;
    int16_t *pin = (int16_t *)(s->buf_queue + bytes_off);
    for (int i = 0; i < s->samples_overlap; i++) {
        *pout++ = *po - ((*pb++ *(*po - *pin++)) >> 16);
        po++;
    }
}
