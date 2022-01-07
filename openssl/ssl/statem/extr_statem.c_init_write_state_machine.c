
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int write_state; } ;
struct TYPE_4__ {TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 int WRITE_STATE_TRANSITION ;

__attribute__((used)) static void init_write_state_machine(SSL *s)
{
    OSSL_STATEM *st = &s->statem;

    st->write_state = WRITE_STATE_TRANSITION;
}
