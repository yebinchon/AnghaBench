#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * dictBuffer; scalar_t__ dictBufferSize; } ;
typedef  TYPE_1__ dRess_t ;
struct TYPE_7__ {int /*<<< orphan*/  useDictionary; } ;
typedef  TYPE_2__ LZ4IO_prefs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__* const,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(LZ4IO_prefs_t* const prefs, dRess_t* ress) {
    if (!prefs->useDictionary) {
        ress->dictBuffer = NULL;
        ress->dictBufferSize = 0;
        return;
    }

    ress->dictBuffer = FUNC1(prefs, &ress->dictBufferSize);
    if (!ress->dictBuffer) FUNC0(25, "Dictionary error : could not create dictionary");
}