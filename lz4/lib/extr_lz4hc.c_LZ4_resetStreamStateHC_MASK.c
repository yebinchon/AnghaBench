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
struct TYPE_3__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  TYPE_1__ LZ4_streamHC_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC1 (void*,int) ; 

int FUNC2(void* state, char* inputBuffer)
{
    LZ4_streamHC_t* const hc4 = FUNC1(state, sizeof(*hc4));
    if (hc4 == NULL) return 1;   /* init failed */
    FUNC0 (&hc4->internal_donotuse, (const BYTE*)inputBuffer);
    return 0;
}