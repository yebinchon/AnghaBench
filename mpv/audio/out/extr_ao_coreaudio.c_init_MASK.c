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
struct priv {int /*<<< orphan*/  device; scalar_t__ change_physical_format; } ;
struct ao {int init_flags; char* redirect; int /*<<< orphan*/  format; struct priv* priv; } ;
typedef  int /*<<< orphan*/  AudioStreamBasicDescription ;

/* Variables and functions */
 int AO_INIT_EXCLUSIVE ; 
 int CONTROL_ERROR ; 
 int CONTROL_OK ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*) ; 
 int /*<<< orphan*/  FUNC6 (struct ao*) ; 

__attribute__((used)) static int FUNC7(struct ao *ao)
{
    struct priv *p = ao->priv;

    if (!FUNC1(ao->format) || (ao->init_flags & AO_INIT_EXCLUSIVE)) {
        FUNC0(ao, "redirecting to coreaudio_exclusive\n");
        ao->redirect = "coreaudio_exclusive";
        return CONTROL_ERROR;
    }

    if (!FUNC6(ao))
        goto coreaudio_error;

    if (p->change_physical_format)
        FUNC5(ao);

    if (!FUNC3(ao, p->device))
        goto coreaudio_error;

    AudioStreamBasicDescription asbd;
    FUNC2(ao, &asbd);

    if (!FUNC4(ao, asbd))
        goto coreaudio_error;

    return CONTROL_OK;

coreaudio_error:
    return CONTROL_ERROR;
}