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
struct ao_push_state {int /*<<< orphan*/  thread; int /*<<< orphan*/  buffer; int /*<<< orphan*/  wakeup_pipe; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  lock; } ;
struct ao {scalar_t__ device_buffer; int /*<<< orphan*/  buffer; int /*<<< orphan*/  samplerate; int /*<<< orphan*/  channels; int /*<<< orphan*/  format; struct ao_push_state* api_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  playthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;

    FUNC8(&p->lock, NULL);
    FUNC6(&p->wakeup, NULL);
    FUNC5(p->wakeup_pipe);

    if (ao->device_buffer <= 0) {
        FUNC0(ao, "Couldn't probe device buffer size.\n");
        goto err;
    }

    p->buffer = FUNC2(ao);
    FUNC4(p->buffer, ao->format,
                               &ao->channels, ao->samplerate);
    FUNC3(p->buffer, ao->buffer);
    if (FUNC7(&p->thread, NULL, playthread, ao))
        goto err;
    return 0;
err:
    FUNC1(ao);
    return -1;
}