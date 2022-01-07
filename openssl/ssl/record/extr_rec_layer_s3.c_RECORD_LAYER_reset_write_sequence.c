
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write_sequence; } ;
typedef TYPE_1__ RECORD_LAYER ;


 int memset (int ,int ,int) ;

void RECORD_LAYER_reset_write_sequence(RECORD_LAYER *rl)
{
    memset(rl->write_sequence, 0, sizeof(rl->write_sequence));
}
