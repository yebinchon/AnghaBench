
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;


 int MulDiv (int,int,int ) ;
 int TWIPS_PER_INCH ;

__attribute__((used)) static LONG twips_to_pixels(int twips, int dpi)
{
    return MulDiv(twips, dpi, TWIPS_PER_INCH);
}
