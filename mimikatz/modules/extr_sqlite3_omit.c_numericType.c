
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ Mem ;


 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Real ;
 int MEM_Str ;
 int computeNumericType (TYPE_1__*) ;

__attribute__((used)) static u16 numericType(Mem *pMem){
  if( pMem->flags & (MEM_Int|MEM_Real) ){
    return pMem->flags & (MEM_Int|MEM_Real);
  }
  if( pMem->flags & (MEM_Str|MEM_Blob) ){
    return computeNumericType(pMem);
  }
  return 0;
}
