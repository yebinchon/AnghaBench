
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_2__ {int * filename; } ;


 TYPE_1__* CG (int ) ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int active_op_array ;
 size_t sprintf (char*,char*,...) ;
 int * zend_new_interned_string (int *) ;
 int * zend_string_alloc (int,int ) ;

__attribute__((used)) static zend_string *zend_generate_anon_class_name(unsigned char *lex_pos)
{
 zend_string *result;
 char char_pos_buf[32];
 size_t char_pos_len = sprintf(char_pos_buf, "%p", lex_pos);
 zend_string *filename = CG(active_op_array)->filename;


 result = zend_string_alloc(sizeof("class@anonymous") + ZSTR_LEN(filename) + char_pos_len, 0);
 sprintf(ZSTR_VAL(result), "class@anonymous%c%s%s", '\0', ZSTR_VAL(filename), char_pos_buf);
 return zend_new_interned_string(result);
}
