
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int logicalSize; int dataGood; int realSize; scalar_t__ pos; void* data; } ;
typedef TYPE_1__ dynamicPtr ;


 int FALSE ;
 int TRUE ;
 void* gdMalloc (int) ;

__attribute__((used)) static int
allocDynamic (dynamicPtr * dp, int initialSize, void *data)
{

 if (data == ((void*)0)) {
  dp->logicalSize = 0;
  dp->dataGood = FALSE;
  dp->data = gdMalloc(initialSize);
 } else {
  dp->logicalSize = initialSize;
  dp->dataGood = TRUE;
  dp->data = data;
 }

 dp->realSize = initialSize;
 dp->dataGood = TRUE;
 dp->pos = 0;

 return TRUE;
}
