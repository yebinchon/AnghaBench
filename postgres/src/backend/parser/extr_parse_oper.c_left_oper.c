
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * args; struct TYPE_4__* next; } ;
typedef int ParseState ;
typedef int OprCacheKey ;
typedef int Operator ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef int FuncDetailCode ;
typedef TYPE_1__* FuncCandidateList ;


 int FUNCDETAIL_NOTFOUND ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int OPEROID ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 TYPE_1__* OpernameGetCandidates (int *,char,int) ;
 int OpernameGetOprid (int *,int ,int ) ;
 int * SearchSysCache1 (int ,int ) ;
 int find_oper_cache_entry (int *) ;
 int make_oper_cache_entry (int *,int ) ;
 int make_oper_cache_key (int *,int *,int *,int ,int ,int) ;
 int op_error (int *,int *,char,int ,int ,int ,int) ;
 int oper_select_candidate (int,int *,TYPE_1__*,int *) ;

Operator
left_oper(ParseState *pstate, List *op, Oid arg, bool noError, int location)
{
 Oid operOid;
 OprCacheKey key;
 bool key_ok;
 FuncDetailCode fdresult = FUNCDETAIL_NOTFOUND;
 HeapTuple tup = ((void*)0);




 key_ok = make_oper_cache_key(pstate, &key, op, InvalidOid, arg, location);

 if (key_ok)
 {
  operOid = find_oper_cache_entry(&key);
  if (OidIsValid(operOid))
  {
   tup = SearchSysCache1(OPEROID, ObjectIdGetDatum(operOid));
   if (HeapTupleIsValid(tup))
    return (Operator) tup;
  }
 }




 operOid = OpernameGetOprid(op, InvalidOid, arg);
 if (!OidIsValid(operOid))
 {



  FuncCandidateList clist;


  clist = OpernameGetCandidates(op, 'l', 0);


  if (clist != ((void*)0))
  {





   FuncCandidateList clisti;

   for (clisti = clist; clisti != ((void*)0); clisti = clisti->next)
   {
    clisti->args[0] = clisti->args[1];
   }





   fdresult = oper_select_candidate(1, &arg, clist, &operOid);
  }
 }

 if (OidIsValid(operOid))
  tup = SearchSysCache1(OPEROID, ObjectIdGetDatum(operOid));

 if (HeapTupleIsValid(tup))
 {
  if (key_ok)
   make_oper_cache_entry(&key, operOid);
 }
 else if (!noError)
  op_error(pstate, op, 'l', InvalidOid, arg, fdresult, location);

 return (Operator) tup;
}
