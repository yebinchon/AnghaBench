
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dstr {char const* array; } ;
struct cf_token {TYPE_1__* lex; } ;
struct cf_preprocessor {int ed; } ;
struct TYPE_2__ {int file; } ;


 int cf_gettokenoffset (struct cf_preprocessor*,struct cf_token const*,int *,int *) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int dstr_safe_printf (struct dstr*,char const*,char const*,char const*,char const*,int *) ;
 int error_data_add (int ,int ,int ,int ,char const*,int) ;

__attribute__((used)) static void cf_addew(struct cf_preprocessor *pp, const struct cf_token *token,
       const char *message, int error_level, const char *val1,
       const char *val2, const char *val3)
{
 uint32_t row, col;
 cf_gettokenoffset(pp, token, &row, &col);

 if (!val1 && !val2 && !val3) {
  error_data_add(pp->ed, token->lex->file, row, col, message,
          error_level);
 } else {
  struct dstr formatted;
  dstr_init(&formatted);
  dstr_safe_printf(&formatted, message, val1, val2, val3, ((void*)0));

  error_data_add(pp->ed, token->lex->file, row, col,
          formatted.array, error_level);
  dstr_free(&formatted);
 }
}
