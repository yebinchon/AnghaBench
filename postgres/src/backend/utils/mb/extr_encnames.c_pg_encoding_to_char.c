
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoding; char const* name; } ;
typedef TYPE_1__ pg_enc2name ;


 int Assert (int) ;
 scalar_t__ PG_VALID_ENCODING (int) ;
 TYPE_1__* pg_enc2name_tbl ;

const char *
pg_encoding_to_char(int encoding)
{
 if (PG_VALID_ENCODING(encoding))
 {
  const pg_enc2name *p = &pg_enc2name_tbl[encoding];

  Assert(encoding == p->encoding);
  return p->name;
 }
 return "";
}
