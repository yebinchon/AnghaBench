
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * png_warning_parameters ;
typedef int png_const_charp ;


 int PNG_WARNING_PARAMETER_COUNT ;
 int png_safecat (int ,int,int ,int ) ;

void
png_warning_parameter(png_warning_parameters p, int number,
    png_const_charp string)
{
   if (number > 0 && number <= PNG_WARNING_PARAMETER_COUNT)
      (void)png_safecat(p[number-1], (sizeof p[number-1]), 0, string);
}
