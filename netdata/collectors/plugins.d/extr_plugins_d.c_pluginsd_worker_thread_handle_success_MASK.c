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
struct plugind {int successful_collections; int update_every; scalar_t__ serial_failures; char* pid; scalar_t__ enabled; int /*<<< orphan*/  fullfilename; } ;

/* Variables and functions */
 scalar_t__ SERIAL_FAILURES_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct plugind *cd) {
    if (FUNC2(cd->successful_collections)) {
        FUNC3((unsigned int) cd->update_every);
        return;
    }

    if(FUNC2(cd->serial_failures <= SERIAL_FAILURES_THRESHOLD)) {
        FUNC1("'%s' (pid %d) does not generate useful output but it reports success (exits with 0). %s.",
            cd->fullfilename, cd->pid,
            cd->enabled ?
                "Waiting a bit before starting it again." :
                "Will not start it again - it is now disabled.");
        FUNC3((unsigned int) (cd->update_every * 10));
        return;
    }

    if (cd->serial_failures > SERIAL_FAILURES_THRESHOLD) {
        FUNC0("'%s' (pid %d) does not generate useful output, although it reports success (exits with 0)."
            "We have tried to collect something %zu times - unsuccessfully. Disabling it.",
            cd->fullfilename, cd->pid, cd->serial_failures);
        cd->enabled = 0;
        return;
    }

    return;
}