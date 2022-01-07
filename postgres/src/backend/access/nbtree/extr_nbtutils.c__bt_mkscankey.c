
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int16 ;
typedef int TupleDesc ;
struct TYPE_13__ {int heapkeyspace; int anynullkeys; int nextkey; int pivotsearch; int * scankeys; int * scantid; int keysz; } ;
struct TYPE_12__ {int* rd_indoption; int * rd_indcollation; } ;
typedef int ScanKeyData ;
typedef int * ScanKey ;
typedef TYPE_1__* Relation ;
typedef int * IndexTuple ;
typedef int FmgrInfo ;
typedef scalar_t__ Datum ;
typedef TYPE_2__* BTScanInsert ;
typedef int AttrNumber ;


 int Assert (int) ;
 int BTORDER_PROC ;
 int BTScanInsertData ;
 int * BTreeTupleGetHeapTID (int *) ;
 int BTreeTupleGetNAtts (int *,TYPE_1__*) ;
 int IndexRelationGetNumberOfAttributes (TYPE_1__*) ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_1__*) ;
 int InvalidOid ;
 int InvalidStrategy ;
 int Min (int,int) ;
 int RelationGetDescr (TYPE_1__*) ;
 int SK_BT_INDOPTION_SHIFT ;
 int SK_ISNULL ;
 int ScanKeyEntryInitializeWithInfo (int *,int,int ,int ,int ,int ,int *,scalar_t__) ;
 scalar_t__ _bt_heapkeyspace (TYPE_1__*) ;
 scalar_t__ index_getattr (int *,int,int ,int*) ;
 int * index_getprocinfo (TYPE_1__*,int,int ) ;
 scalar_t__ offsetof (int ,int ) ;
 TYPE_2__* palloc (scalar_t__) ;
 int scankeys ;

BTScanInsert
_bt_mkscankey(Relation rel, IndexTuple itup)
{
 BTScanInsert key;
 ScanKey skey;
 TupleDesc itupdesc;
 int indnkeyatts;
 int16 *indoption;
 int tupnatts;
 int i;

 itupdesc = RelationGetDescr(rel);
 indnkeyatts = IndexRelationGetNumberOfKeyAttributes(rel);
 indoption = rel->rd_indoption;
 tupnatts = itup ? BTreeTupleGetNAtts(itup, rel) : 0;

 Assert(tupnatts <= IndexRelationGetNumberOfAttributes(rel));






 key = palloc(offsetof(BTScanInsertData, scankeys) +
     sizeof(ScanKeyData) * indnkeyatts);
 key->heapkeyspace = itup == ((void*)0) || _bt_heapkeyspace(rel);
 key->anynullkeys = 0;
 key->nextkey = 0;
 key->pivotsearch = 0;
 key->keysz = Min(indnkeyatts, tupnatts);
 key->scantid = key->heapkeyspace && itup ?
  BTreeTupleGetHeapTID(itup) : ((void*)0);
 skey = key->scankeys;
 for (i = 0; i < indnkeyatts; i++)
 {
  FmgrInfo *procinfo;
  Datum arg;
  bool null;
  int flags;





  procinfo = index_getprocinfo(rel, i + 1, BTORDER_PROC);






  if (i < tupnatts)
   arg = index_getattr(itup, i + 1, itupdesc, &null);
  else
  {
   arg = (Datum) 0;
   null = 1;
  }
  flags = (null ? SK_ISNULL : 0) | (indoption[i] << SK_BT_INDOPTION_SHIFT);
  ScanKeyEntryInitializeWithInfo(&skey[i],
            flags,
            (AttrNumber) (i + 1),
            InvalidStrategy,
            InvalidOid,
            rel->rd_indcollation[i],
            procinfo,
            arg);

  if (null)
   key->anynullkeys = 1;
 }

 return key;
}
