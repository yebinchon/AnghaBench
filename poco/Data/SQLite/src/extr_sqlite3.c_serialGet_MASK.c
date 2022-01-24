#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  t2 ;
typedef  int /*<<< orphan*/  r1 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_4__ {int /*<<< orphan*/  r; int /*<<< orphan*/  i; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; TYPE_1__ u; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int FUNC0 (unsigned char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  MEM_Int ; 
 int /*<<< orphan*/  MEM_Null ; 
 int /*<<< orphan*/  MEM_Real ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (double const*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static u32 FUNC7(
  const unsigned char *buf,     /* Buffer to deserialize from */
  u32 serial_type,              /* Serial type to deserialize */
  Mem *pMem                     /* Memory cell to write value into */
){
  u64 x = FUNC0(buf);
  u32 y = FUNC0(buf+4);
  x = (x<<32) + y;
  if( serial_type==6 ){
    /* EVIDENCE-OF: R-29851-52272 Value is a big-endian 64-bit
    ** twos-complement integer. */
    pMem->u.i = *(i64*)&x;
    pMem->flags = MEM_Int;
    FUNC6( pMem->u.i<0 );
  }else{
    /* EVIDENCE-OF: R-57343-49114 Value is a big-endian IEEE 754-2008 64-bit
    ** floating point number. */
#if !defined(NDEBUG) && !defined(SQLITE_OMIT_FLOATING_POINT)
    /* Verify that integers and floating point values use the same
    ** byte order.  Or, that if SQLITE_MIXED_ENDIAN_64BIT_FLOAT is
    ** defined that 64-bit floating point values really are mixed
    ** endian.
    */
    static const u64 t1 = ((u64)0x3ff00000)<<32;
    static const double r1 = 1.0;
    u64 t2 = t1;
    FUNC5(t2);
    FUNC2( sizeof(r1)==sizeof(t2) && FUNC3(&r1, &t2, sizeof(r1))==0 );
#endif
    FUNC2( sizeof(x)==8 && sizeof(pMem->u.r)==8 );
    FUNC5(x);
    FUNC4(&pMem->u.r, &x, sizeof(x));
    pMem->flags = FUNC1(x) ? MEM_Null : MEM_Real;
  }
  return 8;
}