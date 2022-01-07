
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int const) ;

__attribute__((used)) static inline int havePrefix(const char *glob, int glob_len, const char *pfx) {
 const int pfx_len = strlen (pfx);
 return (pfx_len<glob_len && !strncmp (glob, pfx, pfx_len));
}
