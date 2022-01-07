
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smallfelem ;
typedef int longfelem ;
typedef int felem ;


 int felem_contract (int ,int ) ;
 int felem_reduce (int ,int ) ;
 int smallfelem_square (int ,int const) ;

__attribute__((used)) static void smallfelem_square_contract(smallfelem out, const smallfelem in)
{
    longfelem longtmp;
    felem tmp;

    smallfelem_square(longtmp, in);
    felem_reduce(tmp, longtmp);
    felem_contract(out, tmp);
}
