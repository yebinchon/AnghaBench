
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ Variable ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compareVariableNames(const void *v1, const void *v2)
{
 return strcmp(((const Variable *) v1)->name,
      ((const Variable *) v2)->name);
}
