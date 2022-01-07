
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 int indexjmp ;
 int indx (char const**,char const**,int,int *) ;

__attribute__((used)) static int rd_r_(const char **p) {
 int i;
 const char *list[] = {
  "b", "c", "d", "e", "h", "l", "( hl )", "a", "( ix +)", "( iy +)", ((void*)0)
 };
 i = indx (p, list, 1, &indexjmp);
 if (i < 9) {
  return i;
 }
 indexed = 0xDD + 0x20 * (i - 9);
 return 7;
}
