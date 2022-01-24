#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int i64 ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int FUNC2 (int const*) ; 
 int FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 

__attribute__((used)) static i64 FUNC6(u32 serial_type, const u8 *aKey){
  u32 y;
  FUNC4( CORRUPT_DB || (serial_type>=1 && serial_type<=9 && serial_type!=7) );
  switch( serial_type ){
    case 0:
    case 1:
      FUNC5( aKey[0]&0x80 );
      return FUNC1(aKey);
    case 2:
      FUNC5( aKey[0]&0x80 );
      return FUNC3(aKey);
    case 3:
      FUNC5( aKey[0]&0x80 );
      return FUNC2(aKey);
    case 4: {
      FUNC5( aKey[0]&0x80 );
      y = FUNC0(aKey);
      return (i64)*(int*)&y;
    }
    case 5: {
      FUNC5( aKey[0]&0x80 );
      return FUNC0(aKey+2) + (((i64)1)<<32)*FUNC3(aKey);
    }
    case 6: {
      u64 x = FUNC0(aKey);
      FUNC5( aKey[0]&0x80 );
      x = (x<<32) | FUNC0(aKey+4);
      return (i64)*(i64*)&x;
    }
  }

  return (serial_type - 8);
}