
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge_p3 ;
typedef int ge_p2 ;
typedef int ge_p1p1 ;


 int ge_p2_dbl (int *,int *) ;
 int ge_p3_to_p2 (int *,int const*) ;

__attribute__((used)) static void ge_p3_dbl(ge_p1p1 *r, const ge_p3 *p)
{
    ge_p2 q;
    ge_p3_to_p2(&q, p);
    ge_p2_dbl(r, &q);
}
