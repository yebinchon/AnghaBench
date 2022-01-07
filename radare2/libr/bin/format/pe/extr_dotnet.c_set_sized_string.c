
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*,char const*,int,char*) ;

__attribute__((used)) static void set_sized_string(char *a, int len, void *p, const char *fmt, ...) {

 eprintf ("-> %s = %d (%s)\n", fmt, len, (char *)a);
}
