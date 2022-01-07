
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbfl_encoding ;


 int * mbfl_name2encoding (char const*) ;

int
mbfl_is_support_encoding(const char *name)
{
 const mbfl_encoding *encoding;

 encoding = mbfl_name2encoding(name);
 if (encoding == ((void*)0)) {
  return 0;
 } else {
  return 1;
 }
}
