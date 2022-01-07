
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int key; int changing_xact_state; int * conn; } ;
struct TYPE_8__ {int servername; } ;
struct TYPE_7__ {int umserver; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_user_mapping ;
typedef TYPE_2__ ForeignServer ;
typedef TYPE_3__ ConnCacheEntry ;


 int ERRCODE_CONNECTION_EXCEPTION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_2__* GetForeignServer (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int USERMAPPINGOID ;
 int disconnect_pg_server (TYPE_3__*) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
pgfdw_reject_incomplete_xact_state_change(ConnCacheEntry *entry)
{
 HeapTuple tup;
 Form_pg_user_mapping umform;
 ForeignServer *server;


 if (entry->conn == ((void*)0) || !entry->changing_xact_state)
  return;


 disconnect_pg_server(entry);


 tup = SearchSysCache1(USERMAPPINGOID,
        ObjectIdGetDatum(entry->key));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for user mapping %u", entry->key);
 umform = (Form_pg_user_mapping) GETSTRUCT(tup);
 server = GetForeignServer(umform->umserver);
 ReleaseSysCache(tup);

 ereport(ERROR,
   (errcode(ERRCODE_CONNECTION_EXCEPTION),
    errmsg("connection to server \"%s\" was lost",
     server->servername)));
}
