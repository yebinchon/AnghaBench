
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 int indx (char const**,char const**,int ,int *) ;

__attribute__((used)) static int rd_jp(const char **p) {
 int i;
 const char *list[] = {
  "nz", "z", "nc", "c", "po", "pe", "p", "m", "( ix )", "( iy )",
  "(hl)", ((void*)0)
 };
 i = indx (p, list, 0, ((void*)0));
 if (i < 9) {
  return i;
 }
 if (i == 11) {
  return -1;
 }
 indexed = 0xDD + 0x20 * (i - 9);
 return -1;
}
