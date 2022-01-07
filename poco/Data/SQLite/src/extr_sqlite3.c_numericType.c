
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
 int MEM_IntReal ;
 int MEM_Real ;
 int MEM_Str ;
 int computeNumericType (TYPE_1__*) ;
 int testcase (int) ;

__attribute__((used)) static u16 numericType(Mem *pMem){
  if( pMem->flags & (MEM_Int|MEM_Real|MEM_IntReal) ){
    testcase( pMem->flags & MEM_Int );
    testcase( pMem->flags & MEM_Real );
    testcase( pMem->flags & MEM_IntReal );
    return pMem->flags & (MEM_Int|MEM_Real|MEM_IntReal);
  }
  if( pMem->flags & (MEM_Str|MEM_Blob) ){
    testcase( pMem->flags & MEM_Str );
    testcase( pMem->flags & MEM_Blob );
    return computeNumericType(pMem);
  }
  return 0;
}
