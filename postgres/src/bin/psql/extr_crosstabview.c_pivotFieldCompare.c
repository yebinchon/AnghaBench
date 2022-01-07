
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
typedef TYPE_1__ pivot_field ;


 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
pivotFieldCompare(const void *a, const void *b)
{
 const pivot_field *pa = (const pivot_field *) a;
 const pivot_field *pb = (const pivot_field *) b;


 if (!pb->name)
  return pa->name ? -1 : 0;
 else if (!pa->name)
  return 1;


 return strcmp(pa->name, pb->name);
}
