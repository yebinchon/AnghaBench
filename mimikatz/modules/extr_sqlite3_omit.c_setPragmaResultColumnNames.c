
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int Vdbe ;
struct TYPE_3__ {int nPragCName; int iPragCName; int zName; } ;
typedef TYPE_1__ PragmaName ;


 int COLNAME_NAME ;
 int SQLITE_STATIC ;
 int * pragCName ;
 int sqlite3VdbeSetColName (int *,int,int ,int ,int ) ;
 int sqlite3VdbeSetNumCols (int *,int) ;

__attribute__((used)) static void setPragmaResultColumnNames(
  Vdbe *v,
  const PragmaName *pPragma
){
  u8 n = pPragma->nPragCName;
  sqlite3VdbeSetNumCols(v, n==0 ? 1 : n);
  if( n==0 ){
    sqlite3VdbeSetColName(v, 0, COLNAME_NAME, pPragma->zName, SQLITE_STATIC);
  }else{
    int i, j;
    for(i=0, j=pPragma->iPragCName; i<n; i++, j++){
      sqlite3VdbeSetColName(v, i, COLNAME_NAME, pragCName[j], SQLITE_STATIC);
    }
  }
}
