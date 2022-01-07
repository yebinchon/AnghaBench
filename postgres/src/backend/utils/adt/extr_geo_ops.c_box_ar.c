
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int BOX ;


 int box_ht (int *) ;
 int box_wd (int *) ;
 int float8_mul (int ,int ) ;

__attribute__((used)) static float8
box_ar(BOX *box)
{
 return float8_mul(box_wd(box), box_ht(box));
}
