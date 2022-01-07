
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {float* table_blend; float* buf_overlap; int samples_overlap; scalar_t__ buf_queue; } ;



__attribute__((used)) static void output_overlap_float(struct priv *s, void *buf_out,
                                 int bytes_off)
{
    float *pout = buf_out;
    float *pb = s->table_blend;
    float *po = s->buf_overlap;
    float *pin = (float *)(s->buf_queue + bytes_off);
    for (int i = 0; i < s->samples_overlap; i++) {
        *pout++ = *po - *pb++ *(*po - *pin++);
        po++;
    }
}
