
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_4__ {int kind; } ;
typedef TYPE_1__ zend_ast ;
struct TYPE_5__ {int * name; } ;
 int ZEND_AST_CONSTANT ;
 int ZEND_AST_CONSTANT_CLASS ;
 char* ZEND_LONG_FMT ;
 int ZSTR_LEN (int *) ;
 int* ZSTR_VAL (int *) ;
 int Z_ARR_P (int *) ;
 TYPE_1__* Z_ASTVAL_P (int *) ;
 int Z_DVAL_P (int *) ;
 int Z_LVAL_P (int *) ;
 TYPE_2__* Z_OBJCE_P (int *) ;
 int Z_RES_HANDLE_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TYPE_P (int *) ;
 int efree (char*) ;
 char* emalloc (int ) ;
 char* estrdup (char*) ;
 int memcpy (char*,char*,size_t) ;
 int * php_addcslashes (int ,char*,int) ;
 int spprintf (char**,int ,char*,int,...) ;
 int strchr (char*,char) ;
 size_t strlen (char*) ;
 int zend_finite (int ) ;
 int zend_hash_num_elements (int ) ;
 int zend_string_release (int *) ;

char *phpdbg_short_zval_print(zval *zv, int maxlen)
{
 char *decode = ((void*)0);

 switch (Z_TYPE_P(zv)) {
  case 128:
   decode = estrdup("");
   break;
  case 133:
   decode = estrdup("null");
   break;
  case 135:
   decode = estrdup("false");
   break;
  case 129:
   decode = estrdup("true");
   break;
  case 134:
   spprintf(&decode, 0, ZEND_LONG_FMT, Z_LVAL_P(zv));
   break;
  case 136:
   spprintf(&decode, 0, "%.*G", 14, Z_DVAL_P(zv));


   if (zend_finite(Z_DVAL_P(zv)) && !strchr(decode, '.')) {
    size_t len = strlen(decode);
    char *decode2 = emalloc(len + strlen(".0") + 1);
    memcpy(decode2, decode, len);
    decode2[len] = '.';
    decode2[len+1] = '0';
    decode2[len+2] = '\0';
    efree(decode);
    decode = decode2;
   }
   break;
  case 130: {
   int i;
   zend_string *str = php_addcslashes(Z_STR_P(zv), "\\\"\n\t\0", 5);
   for (i = 0; i < ZSTR_LEN(str); i++) {
    if (ZSTR_VAL(str)[i] < 32) {
     ZSTR_VAL(str)[i] = ' ';
    }
   }
   spprintf(&decode, 0, "\"%.*s\"%c",
    ZSTR_LEN(str) <= maxlen - 2 ? (int) ZSTR_LEN(str) : (maxlen - 3),
    ZSTR_VAL(str), ZSTR_LEN(str) <= maxlen - 2 ? 0 : '+');
   zend_string_release(str);
   } break;
  case 131:
   spprintf(&decode, 0, "Rsrc #%d", Z_RES_HANDLE_P(zv));
   break;
  case 138:
   spprintf(&decode, 0, "array(%d)", zend_hash_num_elements(Z_ARR_P(zv)));
   break;
  case 132: {
   zend_string *str = Z_OBJCE_P(zv)->name;
   spprintf(&decode, 0, "%.*s%c",
    ZSTR_LEN(str) <= maxlen ? (int) ZSTR_LEN(str) : maxlen - 1,
    ZSTR_VAL(str), ZSTR_LEN(str) <= maxlen ? 0 : '+');
   break;
  }
  case 137: {
   zend_ast *ast = Z_ASTVAL_P(zv);

   if (ast->kind == ZEND_AST_CONSTANT
    || ast->kind == ZEND_AST_CONSTANT_CLASS) {
    decode = estrdup("<constant>");
   } else {
    decode = estrdup("<ast>");
   }
   break;
  }
  default:
   spprintf(&decode, 0, "unknown type: %d", Z_TYPE_P(zv));
   break;
 }

 return decode;
}
