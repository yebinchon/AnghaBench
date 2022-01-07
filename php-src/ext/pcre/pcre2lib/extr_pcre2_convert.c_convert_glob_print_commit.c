
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** out_str; } ;
typedef TYPE_1__ pcre2_output_context ;


 void* CHAR_ASTERISK ;
 void* CHAR_C ;
 void* CHAR_I ;
 void* CHAR_LEFT_PARENTHESIS ;
 void* CHAR_M ;
 void* CHAR_O ;
 int CHAR_RIGHT_PARENTHESIS ;
 void* CHAR_T ;
 int convert_glob_write (TYPE_1__*,int ) ;
 int convert_glob_write_str (TYPE_1__*,int) ;

__attribute__((used)) static void
convert_glob_print_commit(pcre2_output_context *out)
{
out->out_str[0] = CHAR_LEFT_PARENTHESIS;
out->out_str[1] = CHAR_ASTERISK;
out->out_str[2] = CHAR_C;
out->out_str[3] = CHAR_O;
out->out_str[4] = CHAR_M;
out->out_str[5] = CHAR_M;
out->out_str[6] = CHAR_I;
out->out_str[7] = CHAR_T;
convert_glob_write_str(out, 8);
convert_glob_write(out, CHAR_RIGHT_PARENTHESIS);
}
