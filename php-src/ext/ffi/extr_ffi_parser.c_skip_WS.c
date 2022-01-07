
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YY_WS ;
 int get_skip_sym () ;
 int yy_error_sym (char*,int) ;

__attribute__((used)) static int skip_WS(int sym) {
 if (sym != YY_WS) {
  yy_error_sym("<WS> expected, got", sym);
 }
 sym = get_skip_sym();
 return sym;
}
