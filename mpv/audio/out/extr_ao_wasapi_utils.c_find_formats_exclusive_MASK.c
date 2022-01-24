#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ao {scalar_t__ format; } ;
struct TYPE_5__ {int /*<<< orphan*/  SubFormat; } ;
typedef  TYPE_1__ WAVEFORMATEXTENSIBLE ;

/* Variables and functions */
 scalar_t__ AF_FORMAT_S_AC3 ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int FUNC3 (struct ao*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct ao*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat)
{
    // Try the specified format as is
    if (FUNC4(ao, wformat))
        return true;

    if (FUNC1(ao->format)) {
        if (ao->format != AF_FORMAT_S_AC3) {
            // If the requested format failed and it is passthrough, but not
            // AC3, try lying and saying it is.
            FUNC0(ao, "Retrying as AC3.\n");
            wformat->SubFormat = *FUNC2(AF_FORMAT_S_AC3);
            if (FUNC4(ao, wformat))
                return true;
        }
        return false;
    }

    // Fallback on the PCM format search
    return FUNC3(ao, wformat);
}