
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tls_multi; } ;
struct context {TYPE_1__ c2; } ;



__attribute__((used)) static inline void
check_tls(struct context *c)
{
    void check_tls_dowork(struct context *c);

    if (c->c2.tls_multi)
    {
        check_tls_dowork(c);
    }
}
