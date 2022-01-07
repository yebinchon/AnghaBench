
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZSTR_CHAR (unsigned char) ;
 int add_next_index_long (int *,int) ;
 int add_next_index_str (int *,int ) ;
 int add_next_index_stringl (int *,char*,size_t) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;

__attribute__((used)) static void add_token(zval *return_value, int token_type,
  unsigned char *text, size_t leng, int lineno) {
 if (token_type >= 256) {
  zval keyword;
  array_init(&keyword);
  add_next_index_long(&keyword, token_type);
  if (leng == 1) {
   add_next_index_str(&keyword, ZSTR_CHAR(text[0]));
  } else {
   add_next_index_stringl(&keyword, (char *) text, leng);
  }
  add_next_index_long(&keyword, lineno);
  add_next_index_zval(return_value, &keyword);
 } else {
  if (leng == 1) {
   add_next_index_str(return_value, ZSTR_CHAR(text[0]));
  } else {
   add_next_index_stringl(return_value, (char *) text, leng);
  }
 }
}
