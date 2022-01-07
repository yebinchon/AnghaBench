
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int single_session; } ;
struct tls_multi {TYPE_1__ opt; } ;



__attribute__((used)) static inline void
tls_set_single_session(struct tls_multi *multi)
{
    if (multi)
    {
        multi->opt.single_session = 1;
    }
}
