
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgHdr ;


 int SQLITE_OK ;
 scalar_t__ subjRequiresPage (int *) ;
 int subjournalPage (int *) ;

__attribute__((used)) static int subjournalPageIfRequired(PgHdr *pPg){
  if( subjRequiresPage(pPg) ){
    return subjournalPage(pPg);
  }else{
    return SQLITE_OK;
  }
}
