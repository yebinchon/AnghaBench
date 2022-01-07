
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write_sequence; } ;
typedef TYPE_1__ RECORD_LAYER ;


 int SEQ_NUM_SIZE ;
 int memcpy (int ,unsigned char*,int ) ;

void DTLS_RECORD_LAYER_set_write_sequence(RECORD_LAYER *rl, unsigned char *seq)
{
    memcpy(rl->write_sequence, seq, SEQ_NUM_SIZE);
}
