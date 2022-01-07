
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static inline void r_str_rmch(char *s, char ch) {
 for (;*s; s++) {
  if (*s==ch) {
   memmove (s, s + 1, strlen (s));
  }
 }
}
