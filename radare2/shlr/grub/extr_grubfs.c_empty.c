
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;
 int memset (void*,char,int) ;

__attribute__((used)) static void* empty (int sz) {
 void *p = malloc (sz);
 if (p) memset (p, '\0', sz);
 return p;
}
