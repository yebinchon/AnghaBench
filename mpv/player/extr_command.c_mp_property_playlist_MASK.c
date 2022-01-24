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
struct playlist_entry {char* title; char* filename; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* current; struct playlist_entry* first; } ;
struct m_property {int dummy; } ;
struct get_playlist_ctx {TYPE_1__* mpctx; } ;
struct TYPE_3__ {struct playlist* playlist; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 int M_PROPERTY_PRINT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_playlist_entry ; 
 char* list_current ; 
 char* list_normal ; 
 int FUNC2 (int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct get_playlist_ctx*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct playlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct playlist*,struct playlist_entry*) ; 
 char* FUNC7 (char*,char*,char const*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(void *ctx, struct m_property *prop,
                                int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (action == M_PROPERTY_PRINT) {
        struct playlist *pl = mpctx->playlist;
        char *res = FUNC8(NULL, "");

        for (struct playlist_entry *e = pl->first; e; e = e->next)
        {
            char *p = e->title;
            if (!p) {
                p = e->filename;
                if (!FUNC4(FUNC0(p))) {
                    char *s = FUNC3(e->filename);
                    if (s[0])
                        p = s;
                }
            }
            const char *m = pl->current == e ? list_current : list_normal;
            res = FUNC7(res, "%s%s\n", m, p);
        }

        *(char **)arg =
            FUNC1(mpctx, res, FUNC6(pl, pl->current));
        return M_PROPERTY_OK;
    }

    struct get_playlist_ctx p = {.mpctx = mpctx};
    return FUNC2(action, arg, FUNC5(mpctx->playlist),
                                get_playlist_entry, &p);
}