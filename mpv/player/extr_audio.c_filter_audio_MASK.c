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
struct mp_audio_buffer {int dummy; } ;
struct ao_chain {int dummy; } ;
struct MPContext {double play_dir; struct ao_chain* ao_chain; } ;

/* Variables and functions */
 int AD_EOF ; 
 int AD_OK ; 
 int AD_WAIT ; 
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,struct ao_chain*,int,double,int*) ; 
 double FUNC1 (struct MPContext*) ; 

__attribute__((used)) static int FUNC2(struct MPContext *mpctx, struct mp_audio_buffer *outbuf,
                        int minsamples)
{
    struct ao_chain *ao_c = mpctx->ao_chain;

    double endpts = FUNC1(mpctx);
    if (endpts != MP_NOPTS_VALUE)
        endpts *= mpctx->play_dir;

    bool eof = false;
    if (!FUNC0(mpctx, ao_c, minsamples, endpts, &eof))
        return AD_WAIT;
    return eof ? AD_EOF : AD_OK;
}