#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mpv_node {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  playback_initialized; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
#define  M_PROPERTY_PRINT 129 
#define  M_PROPERTY_SET 128 
 char* FUNC0 (TYPE_1__*,int) ; 
 double FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  get_chapter_entry ; 
 int FUNC3 (TYPE_1__*) ; 
 char* list_current ; 
 char* list_normal ; 
 int FUNC4 (int,void*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC5 (double,int) ; 
 int FUNC6 (TYPE_1__*,struct mpv_node*) ; 
 char* FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    MPContext *mpctx = ctx;
    int count = FUNC2(mpctx);
    switch (action) {
    case M_PROPERTY_PRINT: {
        int cur = mpctx->playback_initialized ? FUNC3(mpctx) : -1;
        char *res = NULL;
        int n;

        if (count < 1) {
            res = FUNC7(res, "No chapters.");
        }

        for (n = 0; n < count; n++) {
            char *name = FUNC0(mpctx, n);
            double t = FUNC1(mpctx, n);
            char* time = FUNC5(t, false);
            res = FUNC7(res, "%s", time);
            FUNC8(time);
            const char *m = n == cur ? list_current : list_normal;
            res = FUNC7(res, "   %s%s\n", m, name);
            FUNC8(name);
        }

        *(char **)arg = res;
        return M_PROPERTY_OK;
    }
    case M_PROPERTY_SET: {
        struct mpv_node *given_chapters = arg;
        return FUNC6(mpctx, given_chapters);
    }
    }
    return FUNC4(action, arg, count, get_chapter_entry, mpctx);
}