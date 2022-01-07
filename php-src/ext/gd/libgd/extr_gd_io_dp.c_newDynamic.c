
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int freeOK; scalar_t__ pos; } ;
typedef TYPE_1__ dynamicPtr ;


 int allocDynamic (TYPE_1__*,int,void*) ;
 scalar_t__ gdMalloc (int) ;

__attribute__((used)) static dynamicPtr * newDynamic (int initialSize, void *data, int freeOKFlag)
{
 dynamicPtr *dp;
 dp = (dynamicPtr *) gdMalloc (sizeof (dynamicPtr));

 allocDynamic (dp, initialSize, data);

 dp->pos = 0;
 dp->freeOK = freeOKFlag;

 return dp;
}
