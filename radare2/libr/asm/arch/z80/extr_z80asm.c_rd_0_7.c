
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* bitsetres ;
 char* delspc (char const*) ;
 int skipword (char const**,char) ;

__attribute__((used)) static int rd_0_7(const char **p) {
 *p = delspc (*p);
 if (**p == 0) {
  return 0;
 }
 bitsetres = *p;
 skipword (p, ',');
 return 1;
}
