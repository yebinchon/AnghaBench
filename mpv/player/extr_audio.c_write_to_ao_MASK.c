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
typedef  int /*<<< orphan*/  uint8_t ;
struct mp_chmap {int dummy; } ;
struct ao {int dummy; } ;
struct MPContext {int audio_speed; int shown_aframes; int delay; int written_audio; struct ao* ao; int /*<<< orphan*/  encode_lavc_ctx; scalar_t__ paused; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,int*,int*,struct mp_chmap*) ; 
 int FUNC1 (struct ao*,void**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 

__attribute__((used)) static int FUNC5(struct MPContext *mpctx, uint8_t **planes, int samples,
                       int flags)
{
    if (mpctx->paused)
        return 0;
    struct ao *ao = mpctx->ao;
    int samplerate;
    int format;
    struct mp_chmap channels;
    FUNC0(ao, &samplerate, &format, &channels);
    FUNC3(mpctx->encode_lavc_ctx, FUNC4(mpctx));
    if (samples == 0)
        return 0;
    double real_samplerate = samplerate / mpctx->audio_speed;
    int played = FUNC1(mpctx->ao, (void **)planes, samples, flags);
    FUNC2(played <= samples);
    if (played > 0) {
        mpctx->shown_aframes += played;
        mpctx->delay += played / real_samplerate;
        mpctx->written_audio += played / (double)samplerate;
        return played;
    }
    return 0;
}