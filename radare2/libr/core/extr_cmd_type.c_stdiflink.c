
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static int stdiflink(void *p, const char *k, const char *v) {
 return !strncmp (k, "link.", strlen ("link."));
}
