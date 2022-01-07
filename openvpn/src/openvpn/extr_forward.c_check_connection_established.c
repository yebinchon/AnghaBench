
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait_for_connect; } ;
struct context {TYPE_1__ c2; } ;


 scalar_t__ event_timeout_defined (int *) ;

__attribute__((used)) static inline void
check_connection_established(struct context *c)
{
    void check_connection_established_dowork(struct context *c);

    if (event_timeout_defined(&c->c2.wait_for_connect))
    {
        check_connection_established_dowork(c);
    }
}
