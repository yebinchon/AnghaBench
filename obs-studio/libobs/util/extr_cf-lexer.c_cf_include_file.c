
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dstr {int array; scalar_t__ len; } ;
struct TYPE_3__ {int array; } ;
struct cf_token {TYPE_1__ str; } ;
struct TYPE_4__ {size_t num; struct cf_lexer* array; } ;
struct cf_preprocessor {TYPE_2__ dependencies; } ;
struct cf_lexer {int file; } ;
typedef int FILE ;


 int bfree (char*) ;
 int cf_adderror (struct cf_preprocessor*,struct cf_token const*,char*,int ,int *,int *) ;
 struct cf_token* cf_lexer_get_tokens (struct cf_lexer*) ;
 int cf_lexer_init (struct cf_lexer*) ;
 int cf_lexer_lex (struct cf_lexer*,char*,int ) ;
 int cf_preprocess_tokens (struct cf_preprocessor*,int,struct cf_token**) ;
 int da_push_back (TYPE_2__,struct cf_lexer*) ;
 int dstr_copy_strref (struct dstr*,TYPE_1__*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int dstr_mid (struct dstr*,struct dstr*,int,scalar_t__) ;
 int fclose (int *) ;
 int insert_path (struct cf_preprocessor*,struct dstr*) ;
 int * os_fopen (int ,char*) ;
 int os_fread_utf8 (int *,char**) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void cf_include_file(struct cf_preprocessor *pp,
       const struct cf_token *file_token)
{
 struct cf_lexer new_lex;
 struct dstr str_file;
 FILE *file;
 char *file_data;
 struct cf_token *tokens;
 size_t i;

 dstr_init(&str_file);
 dstr_copy_strref(&str_file, &file_token->str);
 dstr_mid(&str_file, &str_file, 1, str_file.len - 2);
 insert_path(pp, &str_file);


 for (i = 0; i < pp->dependencies.num; i++) {
  struct cf_lexer *dep = pp->dependencies.array + i;

  if (strcmp(dep->file, str_file.array) == 0) {
   tokens = cf_lexer_get_tokens(dep);
   cf_preprocess_tokens(pp, 0, &tokens);
   goto exit;
  }
 }

 file = os_fopen(str_file.array, "rb");
 if (!file) {
  cf_adderror(pp, file_token, "Could not open file '$1'",
       file_token->str.array, ((void*)0), ((void*)0));
  goto exit;
 }

 os_fread_utf8(file, &file_data);
 fclose(file);

 cf_lexer_init(&new_lex);
 cf_lexer_lex(&new_lex, file_data, str_file.array);
 tokens = cf_lexer_get_tokens(&new_lex);
 cf_preprocess_tokens(pp, 0, &tokens);
 bfree(file_data);

 da_push_back(pp->dependencies, &new_lex);

exit:
 dstr_free(&str_file);
}
