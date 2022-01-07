
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * db; } ;
struct TYPE_5__ {TYPE_1__ s; scalar_t__ pFunc; } ;
typedef TYPE_2__ sqlite3_context ;
typedef int sqlite3 ;


 int assert (int) ;

sqlite3 *sqlite3_context_db_handle(sqlite3_context *p){
  assert( p && p->pFunc );
  return p->s.db;
}
