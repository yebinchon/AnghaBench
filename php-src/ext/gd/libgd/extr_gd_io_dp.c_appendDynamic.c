
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; int realSize; int logicalSize; scalar_t__ data; int freeOK; int dataGood; } ;
typedef TYPE_1__ dynamicPtr ;


 int FALSE ;
 int TRUE ;
 int gdReallocDynamic (TYPE_1__*,int) ;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static int appendDynamic (dynamicPtr * dp, const void *src, int size)
{
 int bytesNeeded;
 char *tmp;

 if (!dp->dataGood) {
  return FALSE;
 }


 bytesNeeded = dp->pos + size;

 if (bytesNeeded > dp->realSize) {

  if (!dp->freeOK) {
   return FALSE;
  }
  gdReallocDynamic(dp, bytesNeeded * 2);
 }




 tmp = (char *) dp->data;
 memcpy((void *) (tmp + (dp->pos)), src, size);
 dp->pos += size;

 if (dp->pos > dp->logicalSize) {
  dp->logicalSize = dp->pos;
 }

 return TRUE;
}
