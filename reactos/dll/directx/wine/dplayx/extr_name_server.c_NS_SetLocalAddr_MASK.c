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
struct TYPE_2__ {int /*<<< orphan*/  lpLocalAddrHdr; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3( LPVOID lpNSInfo, LPCVOID lpHdr, DWORD dwHdrSize )
{
  lpNSCache lpCache = (lpNSCache)lpNSInfo;

  lpCache->lpLocalAddrHdr = FUNC2( FUNC1(), HEAP_ZERO_MEMORY, dwHdrSize );

  FUNC0( lpCache->lpLocalAddrHdr, lpHdr, dwHdrSize );
}