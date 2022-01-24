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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  VBArrayInstance ;

/* Variables and functions */
 int /*<<< orphan*/  JSCLASS_VBARRAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline VBArrayInstance *FUNC2(vdisp_t *jsthis)
{
    return FUNC0(jsthis, JSCLASS_VBARRAY) ? FUNC1(jsthis) : NULL;
}