
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_SQL_ASCII ;
 int PG_UTF8 ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 char* pg_encoding_to_char (int) ;
 int pg_get_encoding_from_locale (char const*,int) ;
 int pg_log_error (char*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static bool
check_locale_encoding(const char *locale, int user_enc)
{
 int locale_enc;

 locale_enc = pg_get_encoding_from_locale(locale, 1);


 if (!(locale_enc == user_enc ||
    locale_enc == PG_SQL_ASCII ||
    locale_enc == -1 ||



    user_enc == PG_SQL_ASCII))
 {
  pg_log_error("encoding mismatch");
  fprintf(stderr,
    _("The encoding you selected (%s) and the encoding that the\n"
      "selected locale uses (%s) do not match.  This would lead to\n"
      "misbehavior in various character string processing functions.\n"
      "Rerun %s and either do not specify an encoding explicitly,\n"
      "or choose a matching combination.\n"),
    pg_encoding_to_char(user_enc),
    pg_encoding_to_char(locale_enc),
    progname);
  return 0;
 }
 return 1;
}
