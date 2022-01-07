
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int Assert (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int FATAL ;
 int GetDatabaseEncodingName () ;
 scalar_t__ PrepareClientEncoding (size_t) ;
 scalar_t__ SetClientEncoding (size_t) ;
 int backend_startup_complete ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 size_t pending_client_encoding ;
 TYPE_1__* pg_enc2name_tbl ;

void
InitializeClientEncoding(void)
{
 Assert(!backend_startup_complete);
 backend_startup_complete = 1;

 if (PrepareClientEncoding(pending_client_encoding) < 0 ||
  SetClientEncoding(pending_client_encoding) < 0)
 {




  ereport(FATAL,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("conversion between %s and %s is not supported",
      pg_enc2name_tbl[pending_client_encoding].name,
      GetDatabaseEncodingName())));
 }
}
