
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ sqlite3_value ;


 int MEM_Null ;
 int MEM_Zero ;

int sqlite3_value_nochange(sqlite3_value *pVal){
  return (pVal->flags&(MEM_Null|MEM_Zero))==(MEM_Null|MEM_Zero);
}
