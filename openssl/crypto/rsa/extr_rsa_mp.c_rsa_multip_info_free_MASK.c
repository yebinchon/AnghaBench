#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  t; int /*<<< orphan*/  d; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ RSA_PRIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(RSA_PRIME_INFO *pinfo)
{
    /* free a RSA_PRIME_INFO structure */
    FUNC0(pinfo->r);
    FUNC0(pinfo->d);
    FUNC0(pinfo->t);
    FUNC1(pinfo);
}