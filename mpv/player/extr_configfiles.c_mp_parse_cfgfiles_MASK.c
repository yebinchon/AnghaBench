#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct MPOpts {TYPE_1__* encode_opts; } ;
struct MPContext {int /*<<< orphan*/ * mconfig; int /*<<< orphan*/  global; struct MPOpts* opts; } ;
typedef  int /*<<< orphan*/  m_config_t ;
struct TYPE_2__ {scalar_t__* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  SECT_ENCODE ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;

    FUNC2(mpctx->global, "");

    m_config_t *conf = mpctx->mconfig;
    char *section = NULL;
    bool encoding = opts->encode_opts &&
        opts->encode_opts->file && opts->encode_opts->file[0];
    // In encoding mode, we don't want to apply normal config options.
    // So we "divert" normal options into a separate section, and the diverted
    // section is never used - unless maybe it's explicitly referenced from an
    // encoding profile.
    if (encoding)
        section = "playback-default";

    FUNC0(mpctx, NULL, "encoding-profiles.conf");

    FUNC0(mpctx, section, "mpv.conf|config");

    if (encoding)
        FUNC1(conf, SECT_ENCODE, 0);
}