
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* array; } ;
struct base_token {int type; TYPE_1__ text; } ;







 int is_space_or_tab (char) ;

__attribute__((used)) static bool cf_is_token_break(struct base_token *start_token,
         const struct base_token *token)
{
 switch (start_token->type) {
 case 132:
  if (token->type == 129 ||
      token->type == 128)
   return 1;
  break;

 case 131:
  if (token->type == 128 ||
      (token->type == 129 &&
       *token->text.array != '.'))
   return 1;
  break;

 case 128:

  if (is_space_or_tab(*start_token->text.array) &&
      is_space_or_tab(*token->text.array))
   break;
  return 1;

 case 129:
  if (*start_token->text.array == '.' &&
      token->type == 131) {
   start_token->type = 131;
   break;
  }


 case 130:
  return 1;
 }

 return 0;
}
