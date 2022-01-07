
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ isTabFunc; } ;
struct SrcList_item {int zName; TYPE_1__ fg; } ;
typedef int Parse ;


 int sqlite3ErrorMsg (int *,char*,int ) ;

__attribute__((used)) static int cannotBeFunction(Parse *pParse, struct SrcList_item *pFrom){
  if( pFrom->fg.isTabFunc ){
    sqlite3ErrorMsg(pParse, "'%s' is not a function", pFrom->zName);
    return 1;
  }
  return 0;
}
