
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ xCodec; int xGet; scalar_t__ errCode; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ USEFETCH (TYPE_1__*) ;
 int getPageError ;
 int getPageMMap ;
 int getPageNormal ;

__attribute__((used)) static void setGetterMethod(Pager *pPager){
  if( pPager->errCode ){
    pPager->xGet = getPageError;
  }else{
    pPager->xGet = getPageNormal;
  }
}
