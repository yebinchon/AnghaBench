
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flags; scalar_t__ db; } ;
typedef TYPE_1__ sqlite3_value ;


 int MEMCELLSIZE ;
 int MEM_Blob ;
 int MEM_Dyn ;
 int MEM_Ephem ;
 int MEM_Static ;
 int MEM_Str ;
 scalar_t__ SQLITE_OK ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3ValueFree (TYPE_1__*) ;
 scalar_t__ sqlite3VdbeMemMakeWriteable (TYPE_1__*) ;
 TYPE_1__* sqlite3_malloc (int) ;

sqlite3_value *sqlite3_value_dup(const sqlite3_value *pOrig){
  sqlite3_value *pNew;
  if( pOrig==0 ) return 0;
  pNew = sqlite3_malloc( sizeof(*pNew) );
  if( pNew==0 ) return 0;
  memset(pNew, 0, sizeof(*pNew));
  memcpy(pNew, pOrig, MEMCELLSIZE);
  pNew->flags &= ~MEM_Dyn;
  pNew->db = 0;
  if( pNew->flags&(MEM_Str|MEM_Blob) ){
    pNew->flags &= ~(MEM_Static|MEM_Dyn);
    pNew->flags |= MEM_Ephem;
    if( sqlite3VdbeMemMakeWriteable(pNew)!=SQLITE_OK ){
      sqlite3ValueFree(pNew);
      pNew = 0;
    }
  }
  return pNew;
}
