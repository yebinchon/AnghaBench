
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint16 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_18__ {int attlen; int atttypid; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_17__ {int typoutput; } ;
struct TYPE_16__ {scalar_t__ t_len; } ;
struct TYPE_15__ {int natts; } ;
typedef int StringInfo ;
typedef int Relation ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_type ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Datum ;


 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int MaxTupleAttributeNumber ;
 int ObjectIdGetDatum (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 TYPE_1__* RelationGetDescr (int ) ;
 int ReleaseSysCache (TYPE_2__*) ;
 TYPE_2__* SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 TYPE_4__* TupleDescAttr (TYPE_1__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL_ONDISK (int ) ;
 int elog (int ,char*,int ) ;
 int enlargeStringInfo (int ,scalar_t__) ;
 int heap_deform_tuple (TYPE_2__*,TYPE_1__*,int *,int*) ;
 int pfree (char*) ;
 int pq_sendbyte (int ,char) ;
 int pq_sendcountedtext (int ,char*,int ,int) ;
 int pq_sendint16 (int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
logicalrep_write_tuple(StringInfo out, Relation rel, HeapTuple tuple)
{
 TupleDesc desc;
 Datum values[MaxTupleAttributeNumber];
 bool isnull[MaxTupleAttributeNumber];
 int i;
 uint16 nliveatts = 0;

 desc = RelationGetDescr(rel);

 for (i = 0; i < desc->natts; i++)
 {
  if (TupleDescAttr(desc, i)->attisdropped || TupleDescAttr(desc, i)->attgenerated)
   continue;
  nliveatts++;
 }
 pq_sendint16(out, nliveatts);


 enlargeStringInfo(out, tuple->t_len +
       nliveatts * (1 + 4));

 heap_deform_tuple(tuple, desc, values, isnull);


 for (i = 0; i < desc->natts; i++)
 {
  HeapTuple typtup;
  Form_pg_type typclass;
  Form_pg_attribute att = TupleDescAttr(desc, i);
  char *outputstr;

  if (att->attisdropped || att->attgenerated)
   continue;

  if (isnull[i])
  {
   pq_sendbyte(out, 'n');
   continue;
  }
  else if (att->attlen == -1 && VARATT_IS_EXTERNAL_ONDISK(values[i]))
  {
   pq_sendbyte(out, 'u');
   continue;
  }

  typtup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(att->atttypid));
  if (!HeapTupleIsValid(typtup))
   elog(ERROR, "cache lookup failed for type %u", att->atttypid);
  typclass = (Form_pg_type) GETSTRUCT(typtup);

  pq_sendbyte(out, 't');

  outputstr = OidOutputFunctionCall(typclass->typoutput, values[i]);
  pq_sendcountedtext(out, outputstr, strlen(outputstr), 0);
  pfree(outputstr);

  ReleaseSysCache(typtup);
 }
}
