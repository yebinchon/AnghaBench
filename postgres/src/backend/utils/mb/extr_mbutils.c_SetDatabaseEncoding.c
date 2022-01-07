
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoding; } ;


 int Assert (int) ;
 TYPE_1__* DatabaseEncoding ;
 int ERROR ;
 int PG_VALID_BE_ENCODING (int) ;
 int elog (int ,char*,int) ;
 TYPE_1__* pg_enc2name_tbl ;

void
SetDatabaseEncoding(int encoding)
{
 if (!PG_VALID_BE_ENCODING(encoding))
  elog(ERROR, "invalid database encoding: %d", encoding);

 DatabaseEncoding = &pg_enc2name_tbl[encoding];
 Assert(DatabaseEncoding->encoding == encoding);
}
