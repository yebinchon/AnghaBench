
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_multi {scalar_t__ locked_cn; TYPE_1__* session; } ;
struct TYPE_2__ {char* common_name; } ;


 size_t TM_ACTIVE ;
 scalar_t__ string_alloc (char const*,int *) ;

void
tls_lock_common_name(struct tls_multi *multi)
{
    const char *cn = multi->session[TM_ACTIVE].common_name;
    if (cn && !multi->locked_cn)
    {
        multi->locked_cn = string_alloc(cn, ((void*)0));
    }
}
