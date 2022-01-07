
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_sequence; } ;
typedef TYPE_1__ RECORD_LAYER ;


 int memset (int ,int ,int) ;

void RECORD_LAYER_reset_read_sequence(RECORD_LAYER *rl)
{
    memset(rl->read_sequence, 0, sizeof(rl->read_sequence));
}
