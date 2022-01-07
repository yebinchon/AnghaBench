
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* mime_name; } ;
typedef TYPE_1__ mbfl_encoding ;
typedef enum mbfl_no_encoding { ____Placeholder_mbfl_no_encoding } mbfl_no_encoding ;


 TYPE_1__* mbfl_no2encoding (int) ;

const char *
mbfl_no2preferred_mime_name(enum mbfl_no_encoding no_encoding)
{
 const mbfl_encoding *encoding;

 encoding = mbfl_no2encoding(no_encoding);
 if (encoding != ((void*)0) && encoding->mime_name != ((void*)0) && encoding->mime_name[0] != '\0') {
  return encoding->mime_name;
 } else {
  return ((void*)0);
 }
}
