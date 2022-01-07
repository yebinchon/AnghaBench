
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_type_name_start (int) ;
 int yy_line ;
 unsigned char const* yy_pos ;
 unsigned char const* yy_text ;

__attribute__((used)) static int synpred_1(int sym) {
 int ret;
 const unsigned char *save_pos;
 const unsigned char *save_text;
 int save_line;

 save_pos = yy_pos;
 save_text = yy_text;
 save_line = yy_line;
 ret = check_type_name_start(sym) != -1;
 yy_pos = save_pos;
 yy_text = save_text;
 yy_line = save_line;
 return ret;
}
