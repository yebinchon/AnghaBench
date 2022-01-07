
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int x ;
typedef int u64 ;
typedef int u32 ;
typedef int t2 ;
typedef int r1 ;
typedef int i64 ;
struct TYPE_4__ {int r; int i; } ;
struct TYPE_5__ {int flags; TYPE_1__ u; } ;
typedef TYPE_2__ Mem ;


 int FOUR_BYTE_UINT (unsigned char const*) ;
 scalar_t__ IsNaN (int) ;
 int MEM_Int ;
 int MEM_Null ;
 int MEM_Real ;
 int assert (int) ;
 scalar_t__ memcmp (double const*,int*,int) ;
 int memcpy (int *,int*,int) ;
 int swapMixedEndianFloat (int) ;
 int testcase (int) ;

__attribute__((used)) static u32 serialGet(
  const unsigned char *buf,
  u32 serial_type,
  Mem *pMem
){
  u64 x = FOUR_BYTE_UINT(buf);
  u32 y = FOUR_BYTE_UINT(buf+4);
  x = (x<<32) + y;
  if( serial_type==6 ){


    pMem->u.i = *(i64*)&x;
    pMem->flags = MEM_Int;
    testcase( pMem->u.i<0 );
  }else{
    static const u64 t1 = ((u64)0x3ff00000)<<32;
    static const double r1 = 1.0;
    u64 t2 = t1;
    swapMixedEndianFloat(t2);
    assert( sizeof(r1)==sizeof(t2) && memcmp(&r1, &t2, sizeof(r1))==0 );

    assert( sizeof(x)==8 && sizeof(pMem->u.r)==8 );
    swapMixedEndianFloat(x);
    memcpy(&pMem->u.r, &x, sizeof(x));
    pMem->flags = IsNaN(x) ? MEM_Null : MEM_Real;
  }
  return 8;
}
