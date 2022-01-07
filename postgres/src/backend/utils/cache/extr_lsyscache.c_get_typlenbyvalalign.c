
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_2__ {int typbyval; char typalign; int typlen; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int elog (int ,char*,int ) ;

void
get_typlenbyvalalign(Oid typid, int16 *typlen, bool *typbyval,
      char *typalign)
{
 HeapTuple tp;
 Form_pg_type typtup;

 tp = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for type %u", typid);
 typtup = (Form_pg_type) GETSTRUCT(tp);
 *typlen = typtup->typlen;
 *typbyval = typtup->typbyval;
 *typalign = typtup->typalign;
 ReleaseSysCache(tp);
}
