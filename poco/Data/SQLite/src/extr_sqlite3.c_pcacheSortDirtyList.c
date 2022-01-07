
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int a ;
struct TYPE_8__ {struct TYPE_8__* pDirty; } ;
typedef TYPE_1__ PgHdr ;


 scalar_t__ ALWAYS (int) ;
 scalar_t__ NEVER (int) ;
 int N_SORT_BUCKET ;
 int memset (TYPE_1__**,int ,int) ;
 TYPE_1__* pcacheMergeDirtyList (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static PgHdr *pcacheSortDirtyList(PgHdr *pIn){
  PgHdr *a[N_SORT_BUCKET], *p;
  int i;
  memset(a, 0, sizeof(a));
  while( pIn ){
    p = pIn;
    pIn = p->pDirty;
    p->pDirty = 0;
    for(i=0; ALWAYS(i<N_SORT_BUCKET-1); i++){
      if( a[i]==0 ){
        a[i] = p;
        break;
      }else{
        p = pcacheMergeDirtyList(a[i], p);
        a[i] = 0;
      }
    }
    if( NEVER(i==N_SORT_BUCKET-1) ){



      a[i] = pcacheMergeDirtyList(a[i], p);
    }
  }
  p = a[0];
  for(i=1; i<N_SORT_BUCKET; i++){
    if( a[i]==0 ) continue;
    p = p ? pcacheMergeDirtyList(p, a[i]) : a[i];
  }
  return p;
}
