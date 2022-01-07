
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

__attribute__((used)) static int typecmp(const void *a, const void *b) {
 char *type1 = (char *) a;
 char *type2 = (char *) b;
 return strcmp (type1 , type2);
}
