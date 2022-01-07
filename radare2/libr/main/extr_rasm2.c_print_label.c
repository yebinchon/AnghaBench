
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,char const*) ;

__attribute__((used)) static bool print_label(void *user, const void *k, const void *v) {
 printf ("f label.%s = %s\n", (const char *)k, (const char *)v);
 return 1;
}
