
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_10__ {int attstattarget; int attcacheoff; int attnum; int attndims; int attnotnull; int atthasdef; int atthasmissing; char attidentity; char attgenerated; int attisdropped; int attislocal; int attcollation; int attstorage; int attalign; int attbyval; int attlen; int atttypid; scalar_t__ attinhcount; int atttypmod; int attname; scalar_t__ attrelid; } ;
struct TYPE_9__ {int typcollation; int typstorage; int typalign; int typbyval; int typlen; } ;
struct TYPE_8__ {int natts; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_type ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int AttrNumber ;


 int AssertArg (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int MemSet (char const*,int ,int ) ;
 int NAMEDATALEN ;
 char const* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PointerIsValid (TYPE_1__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int elog (int ,char*,int ) ;
 int namestrcpy (int *,char const*) ;

void
TupleDescInitEntry(TupleDesc desc,
       AttrNumber attributeNumber,
       const char *attributeName,
       Oid oidtypeid,
       int32 typmod,
       int attdim)
{
 HeapTuple tuple;
 Form_pg_type typeForm;
 Form_pg_attribute att;




 AssertArg(PointerIsValid(desc));
 AssertArg(attributeNumber >= 1);
 AssertArg(attributeNumber <= desc->natts);




 att = TupleDescAttr(desc, attributeNumber - 1);

 att->attrelid = 0;






 if (attributeName == ((void*)0))
  MemSet(NameStr(att->attname), 0, NAMEDATALEN);
 else if (attributeName != NameStr(att->attname))
  namestrcpy(&(att->attname), attributeName);

 att->attstattarget = -1;
 att->attcacheoff = -1;
 att->atttypmod = typmod;

 att->attnum = attributeNumber;
 att->attndims = attdim;

 att->attnotnull = 0;
 att->atthasdef = 0;
 att->atthasmissing = 0;
 att->attidentity = '\0';
 att->attgenerated = '\0';
 att->attisdropped = 0;
 att->attislocal = 1;
 att->attinhcount = 0;


 tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(oidtypeid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for type %u", oidtypeid);
 typeForm = (Form_pg_type) GETSTRUCT(tuple);

 att->atttypid = oidtypeid;
 att->attlen = typeForm->typlen;
 att->attbyval = typeForm->typbyval;
 att->attalign = typeForm->typalign;
 att->attstorage = typeForm->typstorage;
 att->attcollation = typeForm->typcollation;

 ReleaseSysCache(tuple);
}
