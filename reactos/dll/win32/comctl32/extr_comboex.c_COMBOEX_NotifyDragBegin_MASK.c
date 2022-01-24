#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ NtfUnicode; } ;
struct TYPE_7__ {int iItemid; int /*<<< orphan*/  hdr; int /*<<< orphan*/  szText; } ;
struct TYPE_6__ {int iItemid; int /*<<< orphan*/  hdr; int /*<<< orphan*/  szText; } ;
typedef  TYPE_1__ NMCBEDRAGBEGINW ;
typedef  TYPE_2__ NMCBEDRAGBEGINA ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_3__ COMBOEX_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CBEMAXSTRLEN ; 
 int /*<<< orphan*/  CBEN_DRAGBEGINA ; 
 int /*<<< orphan*/  CBEN_DRAGBEGINW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const COMBOEX_INFO *infoPtr, LPCWSTR wstr)
{
    /* Change the Text item from Unicode to ANSI if necessary for NOTIFY */
    if (infoPtr->NtfUnicode) {
        NMCBEDRAGBEGINW ndbw;

	ndbw.iItemid = -1;
	FUNC2(ndbw.szText, wstr, CBEMAXSTRLEN);
	FUNC0 (infoPtr, CBEN_DRAGBEGINW, &ndbw.hdr);
    } else {
	NMCBEDRAGBEGINA ndba;

	ndba.iItemid = -1;
	FUNC1 (CP_ACP, 0, wstr, -1, ndba.szText, CBEMAXSTRLEN, 0, 0);

	FUNC0 (infoPtr, CBEN_DRAGBEGINA, &ndba.hdr);
    }
}