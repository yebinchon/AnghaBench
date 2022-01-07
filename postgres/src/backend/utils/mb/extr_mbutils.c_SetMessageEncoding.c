
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoding; } ;


 int Assert (int) ;
 TYPE_1__* MessageEncoding ;
 int PG_VALID_ENCODING (int) ;
 TYPE_1__* pg_enc2name_tbl ;

void
SetMessageEncoding(int encoding)
{

 Assert(PG_VALID_ENCODING(encoding));

 MessageEncoding = &pg_enc2name_tbl[encoding];
 Assert(MessageEncoding->encoding == encoding);
}
