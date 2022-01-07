
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dstr {int member_0; } ;
struct cf_preprocessor {TYPE_1__* lex; } ;
struct TYPE_2__ {char* file; } ;


 int dstr_free (struct dstr*) ;
 int dstr_insert_dstr (struct dstr*,int ,struct dstr*) ;
 int dstr_ncopy (struct dstr*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static inline void insert_path(struct cf_preprocessor *pp,
          struct dstr *str_file)
{
 const char *file;
 const char *slash;

 if (pp && pp->lex && pp->lex->file) {
  file = pp->lex->file;
  slash = strrchr(file, '/');
  if (slash) {
   struct dstr path = {0};
   dstr_ncopy(&path, file, slash - file + 1);
   dstr_insert_dstr(str_file, 0, &path);
   dstr_free(&path);
  }
 }
}
