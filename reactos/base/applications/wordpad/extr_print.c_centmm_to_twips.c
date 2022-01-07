
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;


 int CENTMM_PER_INCH ;
 int MulDiv (int,int ,int ) ;
 int TWIPS_PER_INCH ;

__attribute__((used)) static LONG centmm_to_twips(int mm)
{
    return MulDiv(mm, TWIPS_PER_INCH, CENTMM_PER_INCH);
}
