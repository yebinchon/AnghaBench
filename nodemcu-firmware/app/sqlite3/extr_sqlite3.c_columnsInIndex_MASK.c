#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nColumn; int* aiColumn; } ;
typedef  TYPE_1__ Index ;
typedef  int /*<<< orphan*/  Bitmask ;

/* Variables and functions */
 int BMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static Bitmask FUNC2(Index *pIdx){
  Bitmask m = 0;
  int j;
  for(j=pIdx->nColumn-1; j>=0; j--){
    int x = pIdx->aiColumn[j];
    if( x>=0 ){
      FUNC1( x==BMS-1 );
      FUNC1( x==BMS-2 );
      if( x<BMS-1 ) m |= FUNC0(x);
    }
  }
  return m;
}