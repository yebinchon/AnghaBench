
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {scalar_t__ szCache; int szPage; int szExtra; } ;
typedef TYPE_1__ PCache ;



__attribute__((used)) static int numberOfCachePages(PCache *p){
  if( p->szCache>=0 ){


    return p->szCache;
  }else{



    return (int)((-1024*(i64)p->szCache)/(p->szPage+p->szExtra));
  }
}
