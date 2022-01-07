
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int const BOX ;


 int float8_mi (int ,int ) ;
 int rt_box_union (int const*,int const*,int const*) ;
 int size_box (int const*) ;

__attribute__((used)) static float8
box_penalty(const BOX *original, const BOX *new)
{
 BOX unionbox;

 rt_box_union(&unionbox, original, new);
 return float8_mi(size_box(&unionbox), size_box(original));
}
