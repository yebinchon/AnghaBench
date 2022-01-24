#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* lpNSCache ;
struct TYPE_5__ {int /*<<< orphan*/  bNsIsLocal; int /*<<< orphan*/ * present; int /*<<< orphan*/  first; } ;
typedef  TYPE_1__* LPVOID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3( LPVOID* lplpNSInfo )
{
  lpNSCache lpCache = FUNC2( FUNC1(), HEAP_ZERO_MEMORY, sizeof( *lpCache ) );

  *lplpNSInfo = lpCache;

  if( lpCache == NULL )
  {
    return FALSE;
  }

  FUNC0(lpCache->first);
  lpCache->present = NULL;

  lpCache->bNsIsLocal = FALSE;

  return TRUE;
}