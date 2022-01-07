
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int pSchema; TYPE_3__* pIndex; } ;
typedef TYPE_1__ Table ;
struct TYPE_13__ {struct TYPE_13__* pNext; } ;
struct TYPE_12__ {int db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 int IsVirtual (TYPE_1__*) ;
 scalar_t__ collationMatch (char const*,TYPE_3__*) ;
 int sqlite3BeginWriteOperation (TYPE_2__*,int ,int) ;
 int sqlite3RefillIndex (TYPE_2__*,TYPE_3__*,int) ;
 int sqlite3SchemaToIndex (int ,int ) ;

__attribute__((used)) static void reindexTable(Parse *pParse, Table *pTab, char const *zColl){
  if( !IsVirtual(pTab) ){
    Index *pIndex;

    for(pIndex=pTab->pIndex; pIndex; pIndex=pIndex->pNext){
      if( zColl==0 || collationMatch(zColl, pIndex) ){
        int iDb = sqlite3SchemaToIndex(pParse->db, pTab->pSchema);
        sqlite3BeginWriteOperation(pParse, 0, iDb);
        sqlite3RefillIndex(pParse, pIndex, -1);
      }
    }
  }
}
