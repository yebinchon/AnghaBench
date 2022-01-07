
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre2_output_context ;
typedef int PCRE2_UCHAR ;
typedef scalar_t__ BOOL ;


 int CHAR_BACKSLASH ;
 int convert_glob_write (int *,int ) ;

__attribute__((used)) static void
convert_glob_print_separator(pcre2_output_context *out,
  PCRE2_UCHAR separator, BOOL with_escape)
{
if (with_escape)
  convert_glob_write(out, CHAR_BACKSLASH);

convert_glob_write(out, separator);
}
