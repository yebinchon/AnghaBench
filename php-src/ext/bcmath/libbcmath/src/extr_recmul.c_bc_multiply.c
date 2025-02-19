
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* bc_num ;
struct TYPE_11__ {int n_len; int n_scale; scalar_t__ n_sign; int n_ptr; int n_value; } ;


 int MAX (int,int) ;
 int MIN (int,int) ;
 void* MINUS ;
 void* PLUS ;
 int _bc_rec_mul (TYPE_1__*,int,TYPE_1__*,int,TYPE_1__**,int) ;
 int _bc_rm_leading_zeros (TYPE_1__*) ;
 int bc_free_num (TYPE_1__**) ;
 scalar_t__ bc_is_zero (TYPE_1__*) ;

void
bc_multiply (bc_num n1, bc_num n2, bc_num *prod, int scale)
{
  bc_num pval;
  int len1, len2;
  int full_scale, prod_scale;


  len1 = n1->n_len + n1->n_scale;
  len2 = n2->n_len + n2->n_scale;
  full_scale = n1->n_scale + n2->n_scale;
  prod_scale = MIN(full_scale,MAX(scale,MAX(n1->n_scale,n2->n_scale)));


  _bc_rec_mul (n1, len1, n2, len2, &pval, full_scale);


  pval->n_sign = ( n1->n_sign == n2->n_sign ? PLUS : MINUS );
  pval->n_value = pval->n_ptr;
  pval->n_len = len2 + len1 + 1 - full_scale;
  pval->n_scale = prod_scale;
  _bc_rm_leading_zeros (pval);
  if (bc_is_zero (pval))
    pval->n_sign = PLUS;
  bc_free_num (prod);
  *prod = pval;
}
