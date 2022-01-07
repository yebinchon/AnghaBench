
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


typedef TYPE_1__* bc_num ;
struct TYPE_20__ {scalar_t__ n_scale; } ;


 int MAX (scalar_t__,scalar_t__) ;
 TYPE_1__* bc_copy_num (TYPE_1__*) ;
 int bc_divide (TYPE_1__*,TYPE_1__*,TYPE_1__**,int ) ;
 int bc_free_num (TYPE_1__**) ;
 int bc_init_num (TYPE_1__**) ;
 scalar_t__ bc_is_zero (TYPE_1__*) ;
 int bc_multiply (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ;
 int bc_sub (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ;

int
bc_divmod (bc_num num1, bc_num num2, bc_num *quot, bc_num *rem, int scale)
{
  bc_num quotient = ((void*)0);
  bc_num temp;
  int rscale;


  if (bc_is_zero (num2)) return -1;


  rscale = MAX (num1->n_scale, num2->n_scale+scale);
  bc_init_num(&temp);


  bc_divide (num1, num2, &temp, 0);
  if (quot)
    quotient = bc_copy_num (temp);
  bc_multiply (temp, num2, &temp, rscale);
  bc_sub (num1, temp, rem, rscale);
  bc_free_num (&temp);

  if (quot)
    {
      bc_free_num (quot);
      *quot = quotient;
    }

  return 0;
}
