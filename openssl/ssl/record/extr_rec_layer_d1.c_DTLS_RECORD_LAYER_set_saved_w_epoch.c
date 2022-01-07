
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* d; int write_sequence; } ;
struct TYPE_4__ {int w_epoch; int curr_write_sequence; int last_write_sequence; } ;
typedef TYPE_2__ RECORD_LAYER ;


 int memcpy (int ,int ,int) ;

void DTLS_RECORD_LAYER_set_saved_w_epoch(RECORD_LAYER *rl, unsigned short e)
{
    if (e == rl->d->w_epoch - 1) {
        memcpy(rl->d->curr_write_sequence,
               rl->write_sequence, sizeof(rl->write_sequence));
        memcpy(rl->write_sequence,
               rl->d->last_write_sequence, sizeof(rl->write_sequence));
    } else if (e == rl->d->w_epoch + 1) {
        memcpy(rl->d->last_write_sequence,
               rl->write_sequence, sizeof(unsigned char[8]));
        memcpy(rl->write_sequence,
               rl->d->curr_write_sequence, sizeof(rl->write_sequence));
    }
    rl->d->w_epoch = e;
}
