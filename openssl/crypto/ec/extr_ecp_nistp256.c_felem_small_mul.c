
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smallfelem ;
typedef int longfelem ;
typedef int felem ;


 int felem_shrink (int ,int const) ;
 int smallfelem_mul (int ,int const,int ) ;

__attribute__((used)) static void felem_small_mul(longfelem out, const smallfelem small1,
                            const felem in2)
{
    smallfelem small2;
    felem_shrink(small2, in2);
    smallfelem_mul(out, small1, small2);
}
