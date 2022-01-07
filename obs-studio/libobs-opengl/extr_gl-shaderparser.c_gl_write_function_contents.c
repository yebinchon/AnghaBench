
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gl_shader_parser {int gl_string; } ;
struct TYPE_3__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;


 scalar_t__ CFTOKEN_NAME ;
 scalar_t__ CFTOKEN_NONE ;
 scalar_t__ CFTOKEN_OTHER ;
 int dstr_cat_strref (int *,TYPE_1__*) ;
 int gl_write_intrinsic (struct gl_shader_parser*,struct cf_token**) ;
 int gl_write_type_token (struct gl_shader_parser*,struct cf_token*) ;
 scalar_t__ strref_cmp (TYPE_1__*,char const*) ;

__attribute__((used)) static void gl_write_function_contents(struct gl_shader_parser *glsp,
           struct cf_token **p_token,
           const char *end)
{
 struct cf_token *token = *p_token;

 if (token->type != CFTOKEN_NAME || (!gl_write_type_token(glsp, token) &&
         !gl_write_intrinsic(glsp, &token)))
  dstr_cat_strref(&glsp->gl_string, &token->str);

 while (token->type != CFTOKEN_NONE) {
  token++;

  if (end && strref_cmp(&token->str, end) == 0)
   break;

  if (token->type == CFTOKEN_NAME) {
   if (!gl_write_type_token(glsp, token) &&
       !gl_write_intrinsic(glsp, &token))
    dstr_cat_strref(&glsp->gl_string, &token->str);

  } else if (token->type == CFTOKEN_OTHER) {
   if (*token->str.array == '{')
    gl_write_function_contents(glsp, &token, "}");
   else if (*token->str.array == '(')
    gl_write_function_contents(glsp, &token, ")");

   dstr_cat_strref(&glsp->gl_string, &token->str);

  } else {
   dstr_cat_strref(&glsp->gl_string, &token->str);
  }
 }

 *p_token = token;
}
