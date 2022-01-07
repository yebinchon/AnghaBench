
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pOut; } ;
typedef TYPE_3__ sqlite3_context ;
struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_6__ {int mutex; } ;


 int SQLITE_UTF16BE ;
 int assert (int ) ;
 int setResultStrOrError (TYPE_3__*,void const*,int,int ,void (*) (void*)) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_text16be(
  sqlite3_context *pCtx,
  const void *z,
  int n,
  void (*xDel)(void *)
){
  assert( sqlite3_mutex_held(pCtx->pOut->db->mutex) );
  setResultStrOrError(pCtx, z, n, SQLITE_UTF16BE, xDel);
}
