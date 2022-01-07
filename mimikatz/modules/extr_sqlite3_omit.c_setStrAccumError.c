
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ nAlloc; scalar_t__ accError; } ;
typedef TYPE_1__ StrAccum ;


 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_TOOBIG ;
 int assert (int) ;

__attribute__((used)) static void setStrAccumError(StrAccum *p, u8 eError){
  assert( eError==SQLITE_NOMEM || eError==SQLITE_TOOBIG );
  p->accError = eError;
  p->nAlloc = 0;
}
