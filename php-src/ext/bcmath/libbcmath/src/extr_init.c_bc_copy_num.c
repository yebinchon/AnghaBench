
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bc_num ;
struct TYPE_4__ {int n_refs; } ;



bc_num
bc_copy_num (bc_num num)
{
  num->n_refs++;
  return num;
}
