
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemPage ;


 int releasePageNotNull (int *) ;

__attribute__((used)) static void releasePage(MemPage *pPage){
  if( pPage ) releasePageNotNull(pPage);
}
