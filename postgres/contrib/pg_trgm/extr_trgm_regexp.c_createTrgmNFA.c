
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int regex_t ;
typedef int TrgmPackedGraph ;
typedef int TRGM ;
typedef int Oid ;
typedef int MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int REG_ADVANCED ;
 int REG_ICASE ;
 int RE_compile (int *,int *,int,int ) ;
 int * createTrgmNFAInternal (int *,int **,int ) ;
 int pg_regfree (int *) ;

TRGM *
createTrgmNFA(text *text_re, Oid collation,
     TrgmPackedGraph **graph, MemoryContext rcontext)
{
 TRGM *trg;
 regex_t regex;
 MemoryContext tmpcontext;
 MemoryContext oldcontext;







 tmpcontext = AllocSetContextCreate(CurrentMemoryContext,
            "createTrgmNFA temporary context",
            ALLOCSET_DEFAULT_SIZES);
 oldcontext = MemoryContextSwitchTo(tmpcontext);







 RE_compile(&regex, text_re, REG_ADVANCED, collation);







 PG_TRY();
 {
  trg = createTrgmNFAInternal(&regex, graph, rcontext);
 }
 PG_FINALLY();
 {
  pg_regfree(&regex);
 }
 PG_END_TRY();


 MemoryContextSwitchTo(oldcontext);
 MemoryContextDelete(tmpcontext);

 return trg;
}
