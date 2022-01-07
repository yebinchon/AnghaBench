
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_php_scanner_event ;
typedef int HashTable ;


 int CG (int ) ;
 int END ;
 int IS_ARRAY ;
 int LANG_SCNG (int ) ;



 int T_CLOSE_TAG ;
 int T_ECHO ;
 int T_INLINE_HTML ;
 int T_OPEN_TAG_WITH_ECHO ;
 int ZVAL_LONG (int *,int) ;
 int * Z_ARRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int add_token (int *,int,int,int,int) ;
 int yy_cursor ;
 int yy_leng ;
 int yy_limit ;
 int yy_text ;
 int * zend_hash_index_find (int *,int ) ;
 int zend_hash_num_elements (int *) ;
 int zend_lineno ;

void on_event(zend_php_scanner_event event, int token, int line, void *context)
{
 zval *token_stream = (zval *) context;
 HashTable *tokens_ht;
 zval *token_zv;

 switch (event) {
  case 128:
   {
    if (token == END) break;

    if (token == ';' && LANG_SCNG(yy_leng) > 1) {
     token = T_CLOSE_TAG;
    } else if (token == T_ECHO && LANG_SCNG(yy_leng) == sizeof("<?=") - 1) {
     token = T_OPEN_TAG_WITH_ECHO;
    }
    add_token(token_stream, token, LANG_SCNG(yy_text), LANG_SCNG(yy_leng), line);
   }
   break;
  case 130:
   tokens_ht = Z_ARRVAL_P(token_stream);
   token_zv = zend_hash_index_find(tokens_ht, zend_hash_num_elements(tokens_ht) - 1);
   if (token_zv && Z_TYPE_P(token_zv) == IS_ARRAY) {
    ZVAL_LONG(zend_hash_index_find(Z_ARRVAL_P(token_zv), 0), token);
   }
   break;
  case 129:
   if (LANG_SCNG(yy_cursor) != LANG_SCNG(yy_limit)) {
    add_token(token_stream, T_INLINE_HTML, LANG_SCNG(yy_cursor),
     LANG_SCNG(yy_limit) - LANG_SCNG(yy_cursor), CG(zend_lineno));
   }
   break;
 }
}
