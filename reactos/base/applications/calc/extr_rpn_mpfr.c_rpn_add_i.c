
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calc_number_t ;


 int mpz_add ;
 int rpn_exec_int (int *,int *,int *,int ) ;

__attribute__((used)) static void rpn_add_i(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    rpn_exec_int(r, a, b, mpz_add);
}
