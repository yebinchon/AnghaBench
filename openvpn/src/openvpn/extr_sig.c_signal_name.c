
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const value; char const* upper; char const* lower; } ;


 scalar_t__ SIZE (TYPE_1__*) ;
 TYPE_1__* signames ;

const char *
signal_name(const int sig, const bool upper)
{
    int i;
    for (i = 0; i < (int)SIZE(signames); ++i)
    {
        if (sig == signames[i].value)
        {
            return upper ? signames[i].upper : signames[i].lower;
        }
    }
    return "UNKNOWN";
}
