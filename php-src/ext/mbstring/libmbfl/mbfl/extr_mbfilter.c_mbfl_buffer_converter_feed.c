
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbfl_string ;
typedef int mbfl_buffer_converter ;


 int mbfl_buffer_converter_feed2 (int *,int *,int *) ;

int
mbfl_buffer_converter_feed(mbfl_buffer_converter *convd, mbfl_string *string)
{
 return mbfl_buffer_converter_feed2(convd, string, ((void*)0));
}
