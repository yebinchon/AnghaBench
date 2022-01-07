
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pPartIdxWhere; } ;
typedef TYPE_1__ Index ;


 int sqlite3ExprReferencesUpdatedColumn (scalar_t__,int*,int) ;

__attribute__((used)) static int indexWhereClauseMightChange(
  Index *pIdx,
  int *aXRef,
  int chngRowid
){
  if( pIdx->pPartIdxWhere==0 ) return 0;
  return sqlite3ExprReferencesUpdatedColumn(pIdx->pPartIdxWhere,
                                            aXRef, chngRowid);
}
