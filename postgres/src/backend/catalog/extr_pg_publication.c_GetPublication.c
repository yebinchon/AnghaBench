
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pubtruncate; int pubdelete; int pubupdate; int pubinsert; int puballtables; int pubname; } ;
struct TYPE_5__ {int pubtruncate; int pubdelete; int pubupdate; int pubinsert; } ;
struct TYPE_6__ {TYPE_1__ pubactions; int alltables; int name; int oid; } ;
typedef TYPE_2__ Publication ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_publication ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PUBLICATIONOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 scalar_t__ palloc (int) ;
 int pstrdup (int ) ;

Publication *
GetPublication(Oid pubid)
{
 HeapTuple tup;
 Publication *pub;
 Form_pg_publication pubform;

 tup = SearchSysCache1(PUBLICATIONOID, ObjectIdGetDatum(pubid));

 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for publication %u", pubid);

 pubform = (Form_pg_publication) GETSTRUCT(tup);

 pub = (Publication *) palloc(sizeof(Publication));
 pub->oid = pubid;
 pub->name = pstrdup(NameStr(pubform->pubname));
 pub->alltables = pubform->puballtables;
 pub->pubactions.pubinsert = pubform->pubinsert;
 pub->pubactions.pubupdate = pubform->pubupdate;
 pub->pubactions.pubdelete = pubform->pubdelete;
 pub->pubactions.pubtruncate = pubform->pubtruncate;

 ReleaseSysCache(tup);

 return pub;
}
