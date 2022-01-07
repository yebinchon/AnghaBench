
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int haveSuffix(const char *glob, int glob_len, const char *sfx) {
 const int sfx_len = strlen (sfx);
 return (glob_len>sfx_len && !strcmp (glob+glob_len-sfx_len, sfx));
}
