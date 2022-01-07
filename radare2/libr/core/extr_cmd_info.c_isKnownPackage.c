
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ r_str_startswith (char const*,char*) ;

__attribute__((used)) static bool isKnownPackage(const char *cn) {
 if (*cn == 'L') {
  if (r_str_startswith (cn, "Lkotlin")) {
   return 1;
  }
  if (r_str_startswith (cn, "Lcom/google")) {
   return 1;
  }
  if (r_str_startswith (cn, "Lcom/facebook")) {
   return 1;
  }
  if (r_str_startswith (cn, "Lokhttp")) {
   return 1;
  }
  if (r_str_startswith (cn, "Landroid")) {
   return 1;
  }
  if (r_str_startswith (cn, "Lokio")) {
   return 1;
  }
 }
 return 0;
}
