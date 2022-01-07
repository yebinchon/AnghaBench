
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {int attstattarget; int attcacheoff; int attnum; int attndims; int attnotnull; int atthasdef; int atthasmissing; char attidentity; char attgenerated; int attisdropped; int attislocal; int atttypid; int attlen; int attbyval; char attalign; char attstorage; void* attcollation; scalar_t__ attinhcount; int atttypmod; int attname; scalar_t__ attrelid; } ;
struct TYPE_7__ {int natts; } ;
typedef int Oid ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int AttrNumber ;


 int Assert (int ) ;
 int AssertArg (int) ;

 void* DEFAULT_COLLATION_OID ;
 int ERROR ;
 int FLOAT8PASSBYVAL ;


 void* InvalidOid ;
 int PointerIsValid (TYPE_1__*) ;


 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int elog (int ,char*,int) ;
 int namestrcpy (int *,char const*) ;

void
TupleDescInitBuiltinEntry(TupleDesc desc,
        AttrNumber attributeNumber,
        const char *attributeName,
        Oid oidtypeid,
        int32 typmod,
        int attdim)
{
 Form_pg_attribute att;


 AssertArg(PointerIsValid(desc));
 AssertArg(attributeNumber >= 1);
 AssertArg(attributeNumber <= desc->natts);


 att = TupleDescAttr(desc, attributeNumber - 1);
 att->attrelid = 0;


 Assert(attributeName != ((void*)0));
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


 att->atttypid = oidtypeid;






 switch (oidtypeid)
 {
  case 128:
  case 129:
   att->attlen = -1;
   att->attbyval = 0;
   att->attalign = 'i';
   att->attstorage = 'x';
   att->attcollation = DEFAULT_COLLATION_OID;
   break;

  case 132:
   att->attlen = 1;
   att->attbyval = 1;
   att->attalign = 'c';
   att->attstorage = 'p';
   att->attcollation = InvalidOid;
   break;

  case 131:
   att->attlen = 4;
   att->attbyval = 1;
   att->attalign = 'i';
   att->attstorage = 'p';
   att->attcollation = InvalidOid;
   break;

  case 130:
   att->attlen = 8;
   att->attbyval = FLOAT8PASSBYVAL;
   att->attalign = 'd';
   att->attstorage = 'p';
   att->attcollation = InvalidOid;
   break;

  default:
   elog(ERROR, "unsupported type %u", oidtypeid);
 }
}
