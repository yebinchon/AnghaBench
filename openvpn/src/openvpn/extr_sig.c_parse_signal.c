
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int upper; } ;


 scalar_t__ SIZE (TYPE_1__*) ;
 TYPE_1__* signames ;
 int strcmp (char const*,int ) ;

int
parse_signal(const char *signame)
{
    int i;
    for (i = 0; i < (int)SIZE(signames); ++i)
    {
        if (!strcmp(signame, signames[i].upper))
        {
            return signames[i].value;
        }
    }
    return -1;
}
