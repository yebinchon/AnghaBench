
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YY_ID ;
 int get_sym () ;

__attribute__((used)) static int check_ID(int sym) {
 if (sym != YY_ID) {
  return -1;
 }
 sym = get_sym();
 return sym;
}
