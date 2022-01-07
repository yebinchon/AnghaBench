
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_return_val_if_fail (char const*,int) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static inline bool is_cxx_symbol (const char *name) {
 r_return_val_if_fail (name, 0);
 if (!strncmp (name, "_Z", 2)) {
  return 1;
 }
 if (!strncmp (name, "__Z", 3)) {
  return 1;
 }
 return 0;
}
