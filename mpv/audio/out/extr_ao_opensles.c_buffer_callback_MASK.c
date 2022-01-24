#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct priv {double frames_per_enqueue; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  bytes_per_enqueue; int /*<<< orphan*/  buf; scalar_t__ audio_latency; } ;
struct ao {scalar_t__ samplerate; struct priv* priv; } ;
struct TYPE_4__ {scalar_t__ (* Enqueue ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ SLresult ;
typedef  TYPE_1__** SLBufferQueueItf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,scalar_t__) ; 
 scalar_t__ SL_RESULT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,int /*<<< orphan*/ *,double,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(SLBufferQueueItf buffer_queue, void *context)
{
    struct ao *ao = context;
    struct priv *p = ao->priv;
    SLresult res;
    double delay;

    FUNC3(&p->buffer_lock);

    delay = p->frames_per_enqueue / (double)ao->samplerate;
    delay += p->audio_latency;
    FUNC1(ao, &p->buf, p->frames_per_enqueue,
        FUNC2() + 1000000LL * delay);

    res = (*buffer_queue)->Enqueue(buffer_queue, p->buf, p->bytes_per_enqueue);
    if (res != SL_RESULT_SUCCESS)
        FUNC0(ao, "Failed to Enqueue: %d\n", res);

    FUNC4(&p->buffer_lock);
}