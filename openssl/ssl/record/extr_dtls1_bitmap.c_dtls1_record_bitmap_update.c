
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int map; int max_seq_num; } ;
struct TYPE_5__ {int rlayer; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ DTLS1_BITMAP ;


 unsigned char* RECORD_LAYER_get_read_sequence (int *) ;
 int SEQ_NUM_SIZE ;
 int memcpy (int ,unsigned char const*,int ) ;
 int satsub64be (unsigned char const*,int ) ;

void dtls1_record_bitmap_update(SSL *s, DTLS1_BITMAP *bitmap)
{
    int cmp;
    unsigned int shift;
    const unsigned char *seq = RECORD_LAYER_get_read_sequence(&s->rlayer);

    cmp = satsub64be(seq, bitmap->max_seq_num);
    if (cmp > 0) {
        shift = cmp;
        if (shift < sizeof(bitmap->map) * 8)
            bitmap->map <<= shift, bitmap->map |= 1UL;
        else
            bitmap->map = 1UL;
        memcpy(bitmap->max_seq_num, seq, SEQ_NUM_SIZE);
    } else {
        shift = -cmp;
        if (shift < sizeof(bitmap->map) * 8)
            bitmap->map |= 1UL << shift;
    }
}
