
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bc_num ;


 int bc_divmod (int ,int ,int *,int *,int) ;

int
bc_modulo (bc_num num1, bc_num num2, bc_num *result, int scale)
{
  return bc_divmod (num1, num2, ((void*)0), result, scale);
}
