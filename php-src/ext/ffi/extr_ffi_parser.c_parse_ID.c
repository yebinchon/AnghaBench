
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YY_ID ;
 int get_sym () ;
 int yy_error_sym (char*,int) ;
 size_t yy_pos ;
 size_t yy_text ;

__attribute__((used)) static int parse_ID(int sym, const char **name, size_t *name_len) {
 if (sym != YY_ID) {
  yy_error_sym("<ID> expected, got", sym);
 }
 *name = (const char*)yy_text; *name_len = yy_pos - yy_text;
 sym = get_sym();
 return sym;
}
