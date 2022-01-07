
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int timelib_format_specifier_code ;
struct TYPE_3__ {char specifier; int code; } ;
typedef TYPE_1__ timelib_format_specifier ;


 int TIMELIB_FORMAT_LITERAL ;

__attribute__((used)) static timelib_format_specifier_code timelib_lookup_format(char input, const timelib_format_specifier* format_map)
{
 while (format_map && format_map->specifier != '\0') {
  if (format_map->specifier == input) {
   return format_map->code;
  }
  format_map++;
 }
 return TIMELIB_FORMAT_LITERAL;
}
