
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ mbfl_encoding ;
typedef enum mbfl_no_encoding { ____Placeholder_mbfl_no_encoding } mbfl_no_encoding ;


 TYPE_1__* mbfl_no2encoding (int) ;

const char *
mbfl_no_encoding2name(enum mbfl_no_encoding no_encoding)
{
 const mbfl_encoding *encoding;

 encoding = mbfl_no2encoding(no_encoding);
 if (encoding == ((void*)0)) {
  return "";
 } else {
  return encoding->name;
 }
}
