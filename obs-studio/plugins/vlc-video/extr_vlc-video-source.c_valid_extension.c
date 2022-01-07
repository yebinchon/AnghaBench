
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int member_0; } ;


 char* EXTENSIONS_MEDIA ;
 scalar_t__ dstr_cmp (struct dstr*,char const*) ;
 int dstr_copy (struct dstr*,char const*) ;
 int dstr_free (struct dstr*) ;
 int dstr_ncopy (struct dstr*,char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static bool valid_extension(const char *ext)
{
 struct dstr test = {0};
 bool valid = 0;
 const char *b;
 const char *e;

 if (!ext || !*ext)
  return 0;

 b = EXTENSIONS_MEDIA + 1;
 e = strchr(b, ';');

 for (;;) {
  if (e)
   dstr_ncopy(&test, b, e - b);
  else
   dstr_copy(&test, b);

  if (dstr_cmp(&test, ext) == 0) {
   valid = 1;
   break;
  }

  if (!e)
   break;

  b = e + 2;
  e = strchr(b, ';');
 }

 dstr_free(&test);
 return valid;
}
