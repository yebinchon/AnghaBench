
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int ERROR ;
 int PG_VALID_ENCODING (int) ;
 int elog (int ,char*,...) ;
 TYPE_1__* pg_enc2name_tbl ;

void
check_encoding_conversion_args(int src_encoding,
          int dest_encoding,
          int len,
          int expected_src_encoding,
          int expected_dest_encoding)
{
 if (!PG_VALID_ENCODING(src_encoding))
  elog(ERROR, "invalid source encoding ID: %d", src_encoding);
 if (src_encoding != expected_src_encoding && expected_src_encoding >= 0)
  elog(ERROR, "expected source encoding \"%s\", but got \"%s\"",
    pg_enc2name_tbl[expected_src_encoding].name,
    pg_enc2name_tbl[src_encoding].name);
 if (!PG_VALID_ENCODING(dest_encoding))
  elog(ERROR, "invalid destination encoding ID: %d", dest_encoding);
 if (dest_encoding != expected_dest_encoding && expected_dest_encoding >= 0)
  elog(ERROR, "expected destination encoding \"%s\", but got \"%s\"",
    pg_enc2name_tbl[expected_dest_encoding].name,
    pg_enc2name_tbl[dest_encoding].name);
 if (len < 0)
  elog(ERROR, "encoding conversion length must not be negative");
}
