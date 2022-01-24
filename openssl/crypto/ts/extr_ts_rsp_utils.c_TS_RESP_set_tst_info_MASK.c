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
struct TYPE_3__ {int /*<<< orphan*/ * tst_info; int /*<<< orphan*/ * token; } ;
typedef  int /*<<< orphan*/  TS_TST_INFO ;
typedef  TYPE_1__ TS_RESP ;
typedef  int /*<<< orphan*/  PKCS7 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(TS_RESP *a, PKCS7 *p7, TS_TST_INFO *tst_info)
{
    FUNC0(a->token);
    a->token = p7;
    FUNC1(a->tst_info);
    a->tst_info = tst_info;
}