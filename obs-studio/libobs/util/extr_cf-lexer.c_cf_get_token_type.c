
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * array; } ;
struct cf_token {TYPE_1__ str; } ;
struct base_token {int type; } ;
typedef enum cf_token_type { ____Placeholder_cf_token_type } cf_token_type ;







 int CFTOKEN_NAME ;
 int CFTOKEN_NEWLINE ;
 int CFTOKEN_NUM ;
 int CFTOKEN_OTHER ;
 int CFTOKEN_SPACETAB ;
 int is_newline (int ) ;

__attribute__((used)) static inline enum cf_token_type
cf_get_token_type(const struct cf_token *token,
    const struct base_token *start_token)
{
 switch (start_token->type) {
 case 132:
  return CFTOKEN_NAME;

 case 131:
  return CFTOKEN_NUM;

 case 128:
  if (is_newline(*token->str.array))
   return CFTOKEN_NEWLINE;
  else
   return CFTOKEN_SPACETAB;

 case 130:
 case 129:
  break;
 }

 return CFTOKEN_OTHER;
}
