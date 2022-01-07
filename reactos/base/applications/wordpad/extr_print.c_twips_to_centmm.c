
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;


 int CENTMM_PER_INCH ;
 int MulDiv (int,int ,int ) ;
 int TWIPS_PER_INCH ;

__attribute__((used)) static LONG twips_to_centmm(int twips)
{
    return MulDiv(twips, CENTMM_PER_INCH, TWIPS_PER_INCH);
}
