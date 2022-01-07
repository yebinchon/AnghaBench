
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_direction_state {int out_key; int in_key; int need_keys; } ;


 int ASSERT (int ) ;
 int CLEAR (struct key_direction_state) ;




void
key_direction_state_init(struct key_direction_state *kds, int key_direction)
{
    CLEAR(*kds);
    switch (key_direction)
    {
        case 128:
            kds->out_key = 0;
            kds->in_key = 1;
            kds->need_keys = 2;
            break;

        case 129:
            kds->out_key = 1;
            kds->in_key = 0;
            kds->need_keys = 2;
            break;

        case 130:
            kds->out_key = 0;
            kds->in_key = 0;
            kds->need_keys = 1;
            break;

        default:
            ASSERT(0);
    }
}
