
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gf ;


 int gf_add_RAW (int ,int const,int const) ;
 int gf_weak_reduce (int ) ;

void gf_add(gf d, const gf a, const gf b)
{
    gf_add_RAW(d, a, b);
    gf_weak_reduce(d);
}
