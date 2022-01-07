
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YY_EOF ;
 int get_sym () ;
 int parse_declarations (int ) ;
 int yy_buf ;
 int yy_error_sym (char*,int) ;
 int yy_line ;
 int yy_pos ;
 int yy_text ;

__attribute__((used)) static void parse(void) {
 int sym;

 yy_pos = yy_text = yy_buf;
 yy_line = 1;
 sym = parse_declarations(get_sym());
 if (sym != YY_EOF) {
  yy_error_sym("<EOF> expected, got", sym);
 }
}
