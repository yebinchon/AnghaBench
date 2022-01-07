
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_multi {TYPE_1__* session; } ;
struct TYPE_2__ {char* common_name; } ;


 size_t TM_ACTIVE ;
 scalar_t__ strlen (char const*) ;

const char *
tls_common_name(const struct tls_multi *multi, const bool null)
{
    const char *ret = ((void*)0);
    if (multi)
    {
        ret = multi->session[TM_ACTIVE].common_name;
    }
    if (ret && strlen(ret))
    {
        return ret;
    }
    else if (null)
    {
        return ((void*)0);
    }
    else
    {
        return "UNDEF";
    }
}
