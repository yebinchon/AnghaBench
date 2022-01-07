
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ sqlite3_value ;


 size_t MEM_AffMask ;
 int MEM_Int ;
 int MEM_IntReal ;
 int MEM_Null ;
 int MEM_Real ;
 int MEM_Str ;





 int assert (int) ;

int sqlite3_value_type(sqlite3_value* pVal){
  static const u8 aType[] = {
     132,
     129,
     128,
     129,
     130,
     129,
     130,
     129,
     131,
     129,
     131,
     129,
     130,
     129,
     130,
     129,
     132,
     129,
     128,
     129,
     130,
     129,
     130,
     129,
     131,
     129,
     131,
     129,
     130,
     129,
     130,
     129,
     131,
     129,
     128,
     129,
     131,
     129,
     131,
     129,
     131,
     129,
     131,
     129,
     131,
     129,
     131,
     129,
     132,
     129,
     128,
     129,
     131,
     129,
     131,
     129,
     131,
     129,
     131,
     129,
     131,
     129,
     131,
     129,
  };
  return aType[pVal->flags&MEM_AffMask];
}
