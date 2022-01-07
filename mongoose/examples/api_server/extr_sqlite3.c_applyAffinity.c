
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ Mem ;


 int MEM_Int ;
 int MEM_Real ;
 int MEM_Str ;
 char SQLITE_AFF_INTEGER ;
 char SQLITE_AFF_NONE ;
 char SQLITE_AFF_NUMERIC ;
 char SQLITE_AFF_REAL ;
 char SQLITE_AFF_TEXT ;
 int applyNumericAffinity (TYPE_1__*) ;
 int assert (int) ;
 int sqlite3VdbeIntegerAffinity (TYPE_1__*) ;
 int sqlite3VdbeMemStringify (TYPE_1__*,int ) ;

__attribute__((used)) static void applyAffinity(
  Mem *pRec,
  char affinity,
  u8 enc
){
  if( affinity==SQLITE_AFF_TEXT ){




    if( 0==(pRec->flags&MEM_Str) && (pRec->flags&(MEM_Real|MEM_Int)) ){
      sqlite3VdbeMemStringify(pRec, enc);
    }
    pRec->flags &= ~(MEM_Real|MEM_Int);
  }else if( affinity!=SQLITE_AFF_NONE ){
    assert( affinity==SQLITE_AFF_INTEGER || affinity==SQLITE_AFF_REAL
             || affinity==SQLITE_AFF_NUMERIC );
    applyNumericAffinity(pRec);
    if( pRec->flags & MEM_Real ){
      sqlite3VdbeIntegerAffinity(pRec);
    }
  }
}
