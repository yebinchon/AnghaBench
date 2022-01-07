
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int type; } ;
struct gl_shader_parser {int gl_string; } ;
struct cf_token {int str; } ;


 scalar_t__ astrcmp_n (int ,char*,int) ;
 int dstr_cat (int *,char*) ;
 int gl_write_mul (struct gl_shader_parser*,struct cf_token**) ;
 int gl_write_saturate (struct gl_shader_parser*,struct cf_token**) ;
 int gl_write_texture_code (struct gl_shader_parser*,struct cf_token**,struct shader_var*) ;
 struct shader_var* sp_getparam (struct gl_shader_parser*,struct cf_token*) ;
 scalar_t__ strref_cmp (int *,char*) ;

__attribute__((used)) static bool gl_write_intrinsic(struct gl_shader_parser *glsp,
          struct cf_token **p_token)
{
 struct cf_token *token = *p_token;
 bool written = 1;

 if (strref_cmp(&token->str, "atan2") == 0) {
  dstr_cat(&glsp->gl_string, "atan2");
 } else if (strref_cmp(&token->str, "ddx") == 0) {
  dstr_cat(&glsp->gl_string, "dFdx");
 } else if (strref_cmp(&token->str, "ddy") == 0) {
  dstr_cat(&glsp->gl_string, "dFdy");
 } else if (strref_cmp(&token->str, "frac") == 0) {
  dstr_cat(&glsp->gl_string, "fract");
 } else if (strref_cmp(&token->str, "lerp") == 0) {
  dstr_cat(&glsp->gl_string, "mix");
 } else if (strref_cmp(&token->str, "fmod") == 0) {
  dstr_cat(&glsp->gl_string, "mod");
 } else if (strref_cmp(&token->str, "rsqrt") == 0) {
  dstr_cat(&glsp->gl_string, "inversesqrt");
 } else if (strref_cmp(&token->str, "saturate") == 0) {
  written = gl_write_saturate(glsp, &token);
 } else if (strref_cmp(&token->str, "mul") == 0) {
  written = gl_write_mul(glsp, &token);
 } else {
  struct shader_var *var = sp_getparam(glsp, token);
  if (var && astrcmp_n(var->type, "texture", 7) == 0)
   written = gl_write_texture_code(glsp, &token, var);
  else
   written = 0;
 }

 if (written)
  *p_token = token;
 return written;
}
