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
struct m_sub_property {char* member_0; int unavailable; int /*<<< orphan*/  member_1; } ;
struct demuxer {struct demux_edition* editions; } ;
struct demux_edition {int /*<<< orphan*/  default_edition; int /*<<< orphan*/  metadata; } ;
struct MPContext {struct demuxer* demuxer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct m_sub_property*,int,void*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(int item, int action, void *arg, void *ctx)
{
    struct MPContext *mpctx = ctx;

    struct demuxer *demuxer = mpctx->demuxer;
    struct demux_edition *ed = &demuxer->editions[item];

    char *title = FUNC4(ed->metadata, "title");

    struct m_sub_property props[] = {
        {"id",          FUNC1(item)},
        {"title",       FUNC2(title),
                        .unavailable = !title},
        {"default",     FUNC0(ed->default_edition)},
        {0}
    };

    return FUNC3(props, action, arg);
}