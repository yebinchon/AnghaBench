#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct m_property {int dummy; } ;
struct demuxer {int num_editions; int edition; struct demux_edition* editions; } ;
struct demux_edition {int /*<<< orphan*/  metadata; } ;
struct TYPE_3__ {struct demuxer* demuxer; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 int M_PROPERTY_PRINT ; 
 int M_PROPERTY_UNAVAILABLE ; 
 int /*<<< orphan*/  get_edition_entry ; 
 int /*<<< orphan*/  list_current ; 
 int /*<<< orphan*/  list_normal ; 
 int FUNC0 (int,void*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*,char*,...) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *ctx, struct m_property *prop,
                                  int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct demuxer *demuxer = mpctx->demuxer;
    if (!demuxer)
        return M_PROPERTY_UNAVAILABLE;

    if (action == M_PROPERTY_PRINT) {
        char *res = NULL;

        struct demux_edition *editions = demuxer->editions;
        int num_editions = demuxer->num_editions;
        int current = demuxer->edition;

        if (!num_editions)
            res = FUNC2(res, "No editions.");

        for (int n = 0; n < num_editions; n++) {
            struct demux_edition *ed = &editions[n];

            res = FUNC3(res, n == current ? list_current
                                                         : list_normal);
            res = FUNC2(res, "%d: ", n);
            char *title = FUNC1(ed->metadata, "title");
            if (!title)
                title = "unnamed";
            res = FUNC2(res, "'%s'\n", title);
        }

        *(char **)arg = res;
        return M_PROPERTY_OK;
    }
    return FUNC0(action, arg, demuxer->num_editions,
                                get_edition_entry, mpctx);
}