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
typedef  int /*<<< orphan*/  EnumeratorInstance ;

/* Variables and functions */
 int /*<<< orphan*/  JSCLASS_ENUMERATOR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline EnumeratorInstance *FUNC2(vdisp_t *jsthis)
{
    return FUNC1(jsthis, JSCLASS_ENUMERATOR) ? FUNC0(jsthis) : NULL;
}