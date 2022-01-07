
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char LOWCASE (char const) ;

__attribute__((used)) static void eatsize(const char **p) {
 const char *l = *p;

 if (LOWCASE (*l) == 'u') {
  l++;
 }

 switch (LOWCASE (*l)) {
 case 'l':
 case 's':
 case 'h':
 case 'b':
 case 'c':
  l++;

 default:
  break;
 }

 *p = l;
}
