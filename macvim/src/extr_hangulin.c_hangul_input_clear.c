
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_NULL ;
 int L_NULL ;
 int M_NULL ;
 int f ;
 int l ;
 int m ;
 scalar_t__ sp ;

void
hangul_input_clear()
{
    sp = 0;
    f = F_NULL;
    m = M_NULL;
    l = L_NULL;
}
