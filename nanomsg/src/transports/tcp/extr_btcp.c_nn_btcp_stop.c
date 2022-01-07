
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_btcp {int fsm; } ;


 int nn_fsm_stop (int *) ;

__attribute__((used)) static void nn_btcp_stop (void *self)
{
    struct nn_btcp *btcp = self;

    nn_fsm_stop (&btcp->fsm);
}
