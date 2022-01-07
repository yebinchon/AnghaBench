
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_warning_parameters ;
typedef int png_alloc_size_t ;


 int PNG_FORMAT_NUMBER (char*,int,int ) ;
 int PNG_NUMBER_BUFFER_SIZE ;
 int png_warning_parameter (int ,int,int ) ;

void
png_warning_parameter_unsigned(png_warning_parameters p, int number, int format,
    png_alloc_size_t value)
{
   char buffer[PNG_NUMBER_BUFFER_SIZE];
   png_warning_parameter(p, number, PNG_FORMAT_NUMBER(buffer, format, value));
}
