
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nattributes; int* attributes; } ;
typedef TYPE_1__ MVDependency ;
typedef int Bitmapset ;


 int bms_is_member (int,int *) ;

__attribute__((used)) static bool
dependency_is_fully_matched(MVDependency *dependency, Bitmapset *attnums)
{
 int j;





 for (j = 0; j < dependency->nattributes; j++)
 {
  int attnum = dependency->attributes[j];

  if (!bms_is_member(attnum, attnums))
   return 0;
 }

 return 1;
}
