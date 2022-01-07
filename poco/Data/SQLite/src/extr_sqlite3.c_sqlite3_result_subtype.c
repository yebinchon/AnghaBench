
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* pOut; } ;
typedef TYPE_2__ sqlite3_context ;
struct TYPE_7__ {unsigned int eSubtype; int flags; TYPE_1__* db; } ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int MEM_Subtype ;
 int assert (int ) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_subtype(sqlite3_context *pCtx, unsigned int eSubtype){
  Mem *pOut = pCtx->pOut;
  assert( sqlite3_mutex_held(pOut->db->mutex) );
  pOut->eSubtype = eSubtype & 0xff;
  pOut->flags |= MEM_Subtype;
}
