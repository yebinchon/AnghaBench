
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parse_buffer ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ TOKEN_CBRACKET ;
 scalar_t__ TOKEN_OBRACKET ;
 int TRUE ;
 scalar_t__ check_TOKEN (int *) ;
 scalar_t__ get_TOKEN (int *) ;
 int parse_template_members_list (int *) ;
 int parse_template_option_info (int *) ;

__attribute__((used)) static BOOL parse_template_parts(parse_buffer * buf)
{
  if (!parse_template_members_list(buf))
    return FALSE;
  if (check_TOKEN(buf) == TOKEN_OBRACKET)
  {
    get_TOKEN(buf);
    if (!parse_template_option_info(buf))
      return FALSE;
    if (get_TOKEN(buf) != TOKEN_CBRACKET)
     return FALSE;
  }

  return TRUE;
}
