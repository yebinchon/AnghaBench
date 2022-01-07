
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char*) ;
 int strncmp (char const*,char*,scalar_t__) ;

__attribute__((used)) static int stdiftype(void *p, const char *k, const char *v) {
 return !strncmp (v, "type", strlen ("type") + 1);
}
