
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ mixedStruct ;


 int GUC_DISALLOW_IN_FILE ;
 int GUC_NOT_IN_SAMPLE ;
 int GUC_NO_SHOW_ALL ;

__attribute__((used)) static bool
displayStruct(mixedStruct *structToDisplay)
{
 return !(structToDisplay->generic.flags & (GUC_NO_SHOW_ALL |
              GUC_NOT_IN_SAMPLE |
              GUC_DISALLOW_IN_FILE));
}
