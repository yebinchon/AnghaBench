
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbfl_encoding ;


 int const** mbfl_encoding_ptr_list ;

const mbfl_encoding **
mbfl_get_supported_encodings(void)
{
 return mbfl_encoding_ptr_list;
}
