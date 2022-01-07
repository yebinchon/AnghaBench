
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * out_str; } ;
typedef TYPE_1__ pcre2_output_context ;
typedef int PCRE2_UCHAR ;
typedef int BOOL ;


 int CHAR_CIRCUMFLEX_ACCENT ;
 int CHAR_LEFT_SQUARE_BRACKET ;
 int CHAR_RIGHT_SQUARE_BRACKET ;
 int convert_glob_print_separator (TYPE_1__*,int ,int ) ;
 int convert_glob_write (TYPE_1__*,int ) ;
 int convert_glob_write_str (TYPE_1__*,int) ;

__attribute__((used)) static void
convert_glob_print_wildcard(pcre2_output_context *out,
  PCRE2_UCHAR separator, BOOL with_escape)
{
out->out_str[0] = CHAR_LEFT_SQUARE_BRACKET;
out->out_str[1] = CHAR_CIRCUMFLEX_ACCENT;
convert_glob_write_str(out, 2);

convert_glob_print_separator(out, separator, with_escape);

convert_glob_write(out, CHAR_RIGHT_SQUARE_BRACKET);
}
