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
struct priv {int /*<<< orphan*/  hog_pid; int /*<<< orphan*/  device; int /*<<< orphan*/  changed_mixing; int /*<<< orphan*/  original_asbd; int /*<<< orphan*/  stream; int /*<<< orphan*/  render_cb; } ;
struct ao {struct priv* priv; } ;
typedef  int /*<<< orphan*/  OSStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ao*,int) ; 
 int /*<<< orphan*/  noErr ; 

__attribute__((used)) static void FUNC8(struct ao *ao)
{
    struct priv *p = ao->priv;
    OSStatus err = noErr;

    err = FUNC7(ao, false);
    FUNC2("can't remove device listener, this may cause a crash");

    err = FUNC1(p->device, p->render_cb);
    FUNC2("failed to stop audio device");

    err = FUNC0(p->device, p->render_cb);
    FUNC2("failed to remove device render callback");

    if (!FUNC4(ao, p->stream, p->original_asbd))
        FUNC3(ao, "can't revert to original device format\n");

    err = FUNC5(ao, p->device, p->changed_mixing);
    FUNC2("can't re-enable mixing");

    err = FUNC6(p->device, &p->hog_pid);
    FUNC2("can't release hog mode");
}