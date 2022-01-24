#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  scalar_t__ i64 ;
struct TYPE_10__ {int r1; int r2; int nField; int default_rc; int eqSeen; TYPE_2__* aMem; int /*<<< orphan*/  pKeyInfo; } ;
typedef  TYPE_3__ UnpackedRecord ;
struct TYPE_8__ {scalar_t__ i; } ;
struct TYPE_9__ {TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int const*) ; 
 scalar_t__ FUNC2 (int const*) ; 
 scalar_t__ FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,void const*,TYPE_3__*) ; 
 int FUNC6 (int,void const*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,void const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,void const*,TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC10(
  int nKey1, const void *pKey1, /* Left key */
  UnpackedRecord *pPKey2        /* Right key */
){
  const u8 *aKey = &((const u8*)pKey1)[*(const u8*)pKey1 & 0x3F];
  int serial_type = ((const u8*)pKey1)[1];
  int res;
  u32 y;
  u64 x;
  i64 v;
  i64 lhs;

  FUNC8(nKey1, pKey1, pPKey2->pKeyInfo);
  FUNC4( (*(u8*)pKey1)<=0x3F || CORRUPT_DB );
  switch( serial_type ){
    case 1: { /* 1-byte signed integer */
      lhs = FUNC1(aKey);
      FUNC7( lhs<0 );
      break;
    }
    case 2: { /* 2-byte signed integer */
      lhs = FUNC3(aKey);
      FUNC7( lhs<0 );
      break;
    }
    case 3: { /* 3-byte signed integer */
      lhs = FUNC2(aKey);
      FUNC7( lhs<0 );
      break;
    }
    case 4: { /* 4-byte signed integer */
      y = FUNC0(aKey);
      lhs = (i64)*(int*)&y;
      FUNC7( lhs<0 );
      break;
    }
    case 5: { /* 6-byte signed integer */
      lhs = FUNC0(aKey+2) + (((i64)1)<<32)*FUNC3(aKey);
      FUNC7( lhs<0 );
      break;
    }
    case 6: { /* 8-byte signed integer */
      x = FUNC0(aKey);
      x = (x<<32) | FUNC0(aKey+4);
      lhs = *(i64*)&x;
      FUNC7( lhs<0 );
      break;
    }
    case 8:
      lhs = 0;
      break;
    case 9:
      lhs = 1;
      break;

    /* This case could be removed without changing the results of running
    ** this code. Including it causes gcc to generate a faster switch
    ** statement (since the range of switch targets now starts at zero and
    ** is contiguous) but does not cause any duplicate code to be generated
    ** (as gcc is clever enough to combine the two like cases). Other
    ** compilers might be similar.  */
    case 0: case 7:
      return FUNC5(nKey1, pKey1, pPKey2);

    default:
      return FUNC5(nKey1, pKey1, pPKey2);
  }

  v = pPKey2->aMem[0].u.i;
  if( v>lhs ){
    res = pPKey2->r1;
  }else if( v<lhs ){
    res = pPKey2->r2;
  }else if( pPKey2->nField>1 ){
    /* The first fields of the two keys are equal. Compare the trailing
    ** fields.  */
    res = FUNC6(nKey1, pKey1, pPKey2, 1);
  }else{
    /* The first fields of the two keys are equal and there are no trailing
    ** fields. Return pPKey2->default_rc in this case. */
    res = pPKey2->default_rc;
    pPKey2->eqSeen = 1;
  }

  FUNC4( FUNC9(nKey1, pKey1, pPKey2, res) );
  return res;
}