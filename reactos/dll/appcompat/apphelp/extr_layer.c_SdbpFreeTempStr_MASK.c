#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ Buffer; } ;
struct TYPE_5__ {scalar_t__ FixedBuffer; TYPE_1__ Str; } ;
typedef  TYPE_2__* PSDB_TMP_STR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(PSDB_TMP_STR String)
{
    if (String->Str.Buffer != String->FixedBuffer)
    {
        FUNC0(String->Str.Buffer);
    }
}