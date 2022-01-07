
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int logicalSize; int freeOK; } ;
typedef TYPE_1__ dynamicPtr ;


 int FALSE ;
 int gdReallocDynamic (TYPE_1__*,int ) ;

__attribute__((used)) static int trimDynamic (dynamicPtr * dp)
{

 if (!dp->freeOK) {
  return FALSE;
 }
 return gdReallocDynamic(dp, dp->logicalSize);
}
