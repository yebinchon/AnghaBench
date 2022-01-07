
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ curdelta; } ;
typedef TYPE_1__ SplitPoint ;



__attribute__((used)) static int
_bt_splitcmp(const void *arg1, const void *arg2)
{
 SplitPoint *split1 = (SplitPoint *) arg1;
 SplitPoint *split2 = (SplitPoint *) arg2;

 if (split1->curdelta > split2->curdelta)
  return 1;
 if (split1->curdelta < split2->curdelta)
  return -1;

 return 0;
}
