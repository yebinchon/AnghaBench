
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int IS_PRINTABLE (int const) ;

__attribute__((used)) static bool is_string(const ut8* start, const ut8* end) {
 while (start < end) {

  if (!IS_PRINTABLE (*start)) {
   return 0;
  }
  start++;
 }
 return 1;
}
