
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YY_ONE_LINE_COMMENT ;
 int get_skip_sym () ;
 int yy_error_sym (char*,int) ;

__attribute__((used)) static int skip_ONE_LINE_COMMENT(int sym) {
 if (sym != YY_ONE_LINE_COMMENT) {
  yy_error_sym("<ONE_LINE_COMMENT> expected, got", sym);
 }
 sym = get_skip_sym();
 return sym;
}
