
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__ stop; } ;
typedef TYPE_1__ StopList ;


 scalar_t__ bsearch (char**,scalar_t__,scalar_t__,int,int ) ;
 int pg_qsort_strcmp ;

bool
searchstoplist(StopList *s, char *key)
{
 return (s->stop && s->len > 0 &&
   bsearch(&key, s->stop, s->len,
     sizeof(char *), pg_qsort_strcmp)) ? 1 : 0;
}
