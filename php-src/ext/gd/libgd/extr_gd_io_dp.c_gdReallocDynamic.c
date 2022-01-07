
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int realSize; void* data; int logicalSize; } ;
typedef TYPE_1__ dynamicPtr ;


 int TRUE ;
 int gdFree (void*) ;
 void* gdMalloc (int) ;
 void* gdRealloc (void*,int) ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static int gdReallocDynamic (dynamicPtr * dp, int required)
{
 void *newPtr;


 if ((newPtr = gdRealloc(dp->data, required))) {
  dp->realSize = required;
  dp->data = newPtr;
  return TRUE;
 }


 newPtr = gdMalloc(required);


 memcpy(newPtr, dp->data, dp->logicalSize);
 gdFree(dp->data);
 dp->data = newPtr;

 dp->realSize = required;

 return TRUE;
}
