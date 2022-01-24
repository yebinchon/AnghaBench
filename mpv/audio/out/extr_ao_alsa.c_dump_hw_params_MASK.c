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
struct priv {int /*<<< orphan*/  output; } ;
struct ao {int /*<<< orphan*/  log; struct priv* priv; } ;
typedef  int /*<<< orphan*/  snd_pcm_hw_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MSGL_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ao *ao, const char *msg,
                           snd_pcm_hw_params_t *hw_params)
{
    struct priv *p = ao->priv;
    int err;

    err = FUNC4(hw_params, p->output);
    FUNC0("Dump hwparams error");

    char *tmp = NULL;
    size_t tmp_s = FUNC2(p->output, &tmp);
    if (tmp)
        FUNC1(ao->log, MSGL_DEBUG, "%s---\n%.*s---\n", msg, (int)tmp_s, tmp);
    FUNC3(p->output);
}