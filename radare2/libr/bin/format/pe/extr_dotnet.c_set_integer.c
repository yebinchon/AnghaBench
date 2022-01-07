
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*,char const*,int) ;

__attribute__((used)) static void set_integer(int a, void *b, const char *name, ...) {

 eprintf ("-> %s = %d\n", name, a);
}
