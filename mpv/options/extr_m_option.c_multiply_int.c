
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;
typedef int int64_t ;


 int INT_MAX ;
 int INT_MIN ;
 int MPCLAMP (int,int ,int ) ;
 int multiply_int64 (int const*,int*,double) ;

__attribute__((used)) static void multiply_int(const m_option_t *opt, void *val, double f)
{
    int64_t tmp = *(int *)val;
    multiply_int64(opt, &tmp, f);
    *(int *)val = MPCLAMP(tmp, INT_MIN, INT_MAX);
}
