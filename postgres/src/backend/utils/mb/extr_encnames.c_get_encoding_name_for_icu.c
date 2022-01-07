
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ PG_ENCODING_BE_LAST ;
 int StaticAssertStmt (int,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ lengthof (char**) ;
 char** pg_enc2icu_tbl ;
 int pg_encoding_to_char (int) ;

const char *
get_encoding_name_for_icu(int encoding)
{
 const char *icu_encoding_name;

 StaticAssertStmt(lengthof(pg_enc2icu_tbl) == PG_ENCODING_BE_LAST + 1,
      "pg_enc2icu_tbl incomplete");

 icu_encoding_name = pg_enc2icu_tbl[encoding];

 if (!icu_encoding_name)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("encoding \"%s\" not supported by ICU",
      pg_encoding_to_char(encoding))));

 return icu_encoding_name;
}
