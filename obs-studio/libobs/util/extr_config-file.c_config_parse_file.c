
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;
struct darray {int dummy; } ;
typedef int FILE ;


 int CONFIG_FILENOTFOUND ;
 int CONFIG_SUCCESS ;
 int fclose (int *) ;
 int lexer_free (struct lexer*) ;
 int lexer_init (struct lexer*) ;
 int lexer_start_move (struct lexer*,char*) ;
 int * os_fopen (char const*,char*) ;
 int os_fread_utf8 (int *,char**) ;
 int parse_config_data (struct darray*,struct lexer*) ;

__attribute__((used)) static int config_parse_file(struct darray *sections, const char *file,
        bool always_open)
{
 char *file_data;
 struct lexer lex;
 FILE *f;

 f = os_fopen(file, "rb");
 if (always_open && !f)
  f = os_fopen(file, "w+");
 if (!f)
  return CONFIG_FILENOTFOUND;

 os_fread_utf8(f, &file_data);
 fclose(f);

 if (!file_data)
  return CONFIG_SUCCESS;

 lexer_init(&lex);
 lexer_start_move(&lex, file_data);

 parse_config_data(sections, &lex);

 lexer_free(&lex);
 return CONFIG_SUCCESS;
}
