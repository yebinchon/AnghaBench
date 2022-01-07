
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int no_encoding; } ;
typedef TYPE_1__ mbfl_encoding ;
typedef enum mbfl_no_encoding { ____Placeholder_mbfl_no_encoding } mbfl_no_encoding ;


 TYPE_1__* mbfl_name2encoding (char const*) ;
 int mbfl_no_encoding_invalid ;

enum mbfl_no_encoding
mbfl_name2no_encoding(const char *name)
{
 const mbfl_encoding *encoding;

 encoding = mbfl_name2encoding(name);
 if (encoding == ((void*)0)) {
  return mbfl_no_encoding_invalid;
 } else {
  return encoding->no_encoding;
 }
}
