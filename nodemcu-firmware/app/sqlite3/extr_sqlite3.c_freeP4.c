
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_9__ {int pnBytesFreed; } ;
typedef TYPE_1__ sqlite3 ;
typedef int VTable ;
typedef int Mem ;
typedef int KeyInfo ;
typedef int FuncDef ;
typedef int Expr ;
 int assert (TYPE_1__*) ;
 int freeEphemeralFunction (TYPE_1__*,int *) ;
 int freeP4FuncCtx (TYPE_1__*,int *) ;
 int freeP4Mem (TYPE_1__*,int *) ;
 int sqlite3DbFree (TYPE_1__*,void*) ;
 int sqlite3ExprDelete (TYPE_1__*,int *) ;
 int sqlite3KeyInfoUnref (int *) ;
 int sqlite3ValueFree (int *) ;
 int sqlite3VtabUnlock (int *) ;

__attribute__((used)) static void freeP4(sqlite3 *db, int p4type, void *p4){
  assert( db );
  switch( p4type ){
    case 135: {
      freeP4FuncCtx(db, (sqlite3_context*)p4);
      break;
    }
    case 129:
    case 133:
    case 137:
    case 132: {
      sqlite3DbFree(db, p4);
      break;
    }
    case 131: {
      if( db->pnBytesFreed==0 ) sqlite3KeyInfoUnref((KeyInfo*)p4);
      break;
    }






    case 134: {
      freeEphemeralFunction(db, (FuncDef*)p4);
      break;
    }
    case 130: {
      if( db->pnBytesFreed==0 ){
        sqlite3ValueFree((sqlite3_value*)p4);
      }else{
        freeP4Mem(db, (Mem*)p4);
      }
      break;
    }
    case 128 : {
      if( db->pnBytesFreed==0 ) sqlite3VtabUnlock((VTable *)p4);
      break;
    }
  }
}
