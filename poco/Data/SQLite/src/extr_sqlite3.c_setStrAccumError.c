
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int db; scalar_t__ mxAlloc; scalar_t__ accError; } ;
typedef TYPE_1__ StrAccum ;


 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_TOOBIG ;
 int assert (int) ;
 int sqlite3ErrorToParser (int ,scalar_t__) ;
 int sqlite3_str_reset (TYPE_1__*) ;

__attribute__((used)) static void setStrAccumError(StrAccum *p, u8 eError){
  assert( eError==SQLITE_NOMEM || eError==SQLITE_TOOBIG );
  p->accError = eError;
  if( p->mxAlloc ) sqlite3_str_reset(p);
  if( eError==SQLITE_TOOBIG ) sqlite3ErrorToParser(p->db, eError);
}
