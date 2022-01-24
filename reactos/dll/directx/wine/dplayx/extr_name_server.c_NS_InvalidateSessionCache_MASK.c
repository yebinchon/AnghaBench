#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* lpNSCache ;
struct TYPE_2__ {int /*<<< orphan*/  bNsIsLocal; int /*<<< orphan*/ * present; int /*<<< orphan*/  first; } ;
typedef  int /*<<< orphan*/  LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  cbDeleteNSNodeFromHeap ; 
 int /*<<< orphan*/  lpNSCacheData ; 
 int /*<<< orphan*/  next ; 

void FUNC2( LPVOID lpNSInfo )
{
  lpNSCache lpCache = (lpNSCache)lpNSInfo;

  if( lpCache == NULL )
  {
    FUNC1( ": invalidate nonexistent cache\n" );
    return;
  }

  FUNC0( lpCache->first, next, lpNSCacheData, cbDeleteNSNodeFromHeap );

  /* NULL out the walking pointer */
  lpCache->present = NULL;

  lpCache->bNsIsLocal = FALSE;

}