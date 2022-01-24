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
struct priv {int num_samples; size_t num_buffers; int /*<<< orphan*/  al_format; } ;
struct ao {int sstride; int /*<<< orphan*/  samplerate; struct priv* priv; } ;
typedef  scalar_t__ ALint ;

/* Variables and functions */
 scalar_t__ AL_PLAYING ; 
 int /*<<< orphan*/  AL_SOURCE_STATE ; 
 int AOPLAY_FINAL_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int* buffer_size ; 
 int /*<<< orphan*/ * buffers ; 
 size_t cur_buf ; 
 int /*<<< orphan*/  source ; 

__attribute__((used)) static int FUNC4(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *p = ao->priv;

    int buffered_samples = 0;
    int num = 0;
    if (flags & AOPLAY_FINAL_CHUNK) {
        num = 1;
        buffered_samples = samples;
    } else {
        num = samples / p->num_samples;
        buffered_samples = num * p->num_samples;
    }

    for (int i = 0; i < num; i++) {
        char *d = *data;
        if (flags & AOPLAY_FINAL_CHUNK) {
            buffer_size[cur_buf] = samples;
        } else {
            buffer_size[cur_buf] = p->num_samples;
        }
        d += i * buffer_size[cur_buf] * ao->sstride;
        FUNC0(buffers[cur_buf], p->al_format, d,
            buffer_size[cur_buf] * ao->sstride, ao->samplerate);
        FUNC3(source, 1, &buffers[cur_buf]);
        cur_buf = (cur_buf + 1) % p->num_buffers;
    }

    ALint state;
    FUNC1(source, AL_SOURCE_STATE, &state);
    if (state != AL_PLAYING) // checked here in case of an underrun
        FUNC2(source);

    return buffered_samples;
}