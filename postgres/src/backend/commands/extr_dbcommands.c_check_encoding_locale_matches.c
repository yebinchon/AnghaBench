
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int PG_SQL_ASCII ;
 int PG_UTF8 ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ) ;
 int errmsg (char*,int ,char const*) ;
 int pg_encoding_to_char (int) ;
 int pg_get_encoding_from_locale (char const*,int) ;
 scalar_t__ superuser () ;

void
check_encoding_locale_matches(int encoding, const char *collate, const char *ctype)
{
 int ctype_encoding = pg_get_encoding_from_locale(ctype, 1);
 int collate_encoding = pg_get_encoding_from_locale(collate, 1);

 if (!(ctype_encoding == encoding ||
    ctype_encoding == PG_SQL_ASCII ||
    ctype_encoding == -1 ||



    (encoding == PG_SQL_ASCII && superuser())))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("encoding \"%s\" does not match locale \"%s\"",
      pg_encoding_to_char(encoding),
      ctype),
     errdetail("The chosen LC_CTYPE setting requires encoding \"%s\".",
         pg_encoding_to_char(ctype_encoding))));

 if (!(collate_encoding == encoding ||
    collate_encoding == PG_SQL_ASCII ||
    collate_encoding == -1 ||



    (encoding == PG_SQL_ASCII && superuser())))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("encoding \"%s\" does not match locale \"%s\"",
      pg_encoding_to_char(encoding),
      collate),
     errdetail("The chosen LC_COLLATE setting requires encoding \"%s\".",
         pg_encoding_to_char(collate_encoding))));
}
