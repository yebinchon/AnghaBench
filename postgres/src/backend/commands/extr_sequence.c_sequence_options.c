
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seqstart; int seqmin; int seqmax; int seqincrement; int seqcycle; int seqcache; } ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_sequence ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int INT64_FORMAT ;
 int * NIL ;
 int ReleaseSysCache (int ) ;
 int SEQRELID ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int * lappend (int *,int ) ;
 int makeDefElem (char*,int *,int) ;
 scalar_t__ makeFloat (int ) ;
 scalar_t__ makeInteger (int ) ;
 int psprintf (int ,int ) ;

List *
sequence_options(Oid relid)
{
 HeapTuple pgstuple;
 Form_pg_sequence pgsform;
 List *options = NIL;

 pgstuple = SearchSysCache1(SEQRELID, relid);
 if (!HeapTupleIsValid(pgstuple))
  elog(ERROR, "cache lookup failed for sequence %u", relid);
 pgsform = (Form_pg_sequence) GETSTRUCT(pgstuple);


 options = lappend(options,
       makeDefElem("cache", (Node *) makeFloat(psprintf(INT64_FORMAT, pgsform->seqcache)), -1));
 options = lappend(options,
       makeDefElem("cycle", (Node *) makeInteger(pgsform->seqcycle), -1));
 options = lappend(options,
       makeDefElem("increment", (Node *) makeFloat(psprintf(INT64_FORMAT, pgsform->seqincrement)), -1));
 options = lappend(options,
       makeDefElem("maxvalue", (Node *) makeFloat(psprintf(INT64_FORMAT, pgsform->seqmax)), -1));
 options = lappend(options,
       makeDefElem("minvalue", (Node *) makeFloat(psprintf(INT64_FORMAT, pgsform->seqmin)), -1));
 options = lappend(options,
       makeDefElem("start", (Node *) makeFloat(psprintf(INT64_FORMAT, pgsform->seqstart)), -1));

 ReleaseSysCache(pgstuple);

 return options;
}
