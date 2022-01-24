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
struct TYPE_3__ {int n; int* ix; } ;
typedef  TYPE_1__ WhereMaskSet ;
typedef  int Bitmask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static Bitmask FUNC1(WhereMaskSet *pMaskSet, int iCursor){
  int i;
  FUNC0( pMaskSet->n<=(int)sizeof(Bitmask)*8 );
  for(i=0; i<pMaskSet->n; i++){
    if( pMaskSet->ix[i]==iCursor ){
      return ((Bitmask)1)<<i;
    }
  }
  return 0;
}