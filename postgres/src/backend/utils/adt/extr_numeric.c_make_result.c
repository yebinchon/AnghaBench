
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NumericVar ;
typedef int Numeric ;


 int make_result_opt_error (int const*,int *) ;

__attribute__((used)) static Numeric
make_result(const NumericVar *var)
{
 return make_result_opt_error(var, ((void*)0));
}
