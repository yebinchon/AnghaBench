
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_2__ {int * filename; } ;


 TYPE_1__* CG (int ) ;
 scalar_t__ ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int active_op_array ;
 size_t sprintf (char*,char*,...) ;
 int * zend_new_interned_string (int *) ;
 int * zend_string_alloc (scalar_t__,int ) ;

__attribute__((used)) static zend_string *zend_build_runtime_definition_key(zend_string *name, unsigned char *lex_pos)
{
 zend_string *result;
 char char_pos_buf[32];
 size_t char_pos_len = sprintf(char_pos_buf, "%p", lex_pos);
 zend_string *filename = CG(active_op_array)->filename;


 result = zend_string_alloc(1 + ZSTR_LEN(name) + ZSTR_LEN(filename) + char_pos_len, 0);
 sprintf(ZSTR_VAL(result), "%c%s%s%s", '\0', ZSTR_VAL(name), ZSTR_VAL(filename), char_pos_buf);
 return zend_new_interned_string(result);
}
