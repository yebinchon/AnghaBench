#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct priv {int broken_seek; scalar_t__ entry_size; TYPE_3__* mpa; } ;
struct TYPE_9__ {scalar_t__ pos; int /*<<< orphan*/  cancel; struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_10__ {int /*<<< orphan*/  arch; int /*<<< orphan*/  locale; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ STREAM_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(stream_t *s, int64_t newpos)
{
    struct priv *p = s->priv;
    if (p->mpa && !p->broken_seek) {
        locale_t oldlocale = FUNC11(p->mpa->locale);
        int r = FUNC6(p->mpa->arch, newpos, SEEK_SET);
        FUNC11(oldlocale);
        if (r >= 0)
            return 1;
        FUNC3(s, "possibly unsupported seeking - switching to reopening\n");
        p->broken_seek = true;
        if (FUNC10(s) < STREAM_OK)
            return -1;
    }
    // libarchive can't seek in most formats.
    if (newpos < s->pos) {
        // Hack seeking backwards into working by reopening the archive and
        // starting over.
        FUNC2(s, "trying to reopen archive for performing seek\n");
        if (FUNC10(s) < STREAM_OK)
            return -1;
    }
    if (newpos > s->pos) {
        if (!p->mpa && FUNC10(s) < STREAM_OK)
            return -1;
        // For seeking forwards, just keep reading data (there's no libarchive
        // skip function either).
        char buffer[4096];
        while (newpos > s->pos) {
            if (FUNC9(s->cancel))
                return -1;

            int size = FUNC0(newpos - s->pos, sizeof(buffer));
            locale_t oldlocale = FUNC11(p->mpa->locale);
            int r = FUNC5(p->mpa->arch, buffer, size);
            if (r <= 0) {
                if (r == 0 && newpos > p->entry_size) {
                    FUNC1(s, "demuxer trying to seek beyond end of archive "
                           "entry\n");
                } else if (r == 0) {
                    FUNC1(s, "end of archive entry reached while seeking\n");
                } else {
                    FUNC1(s, "%s\n", FUNC4(p->mpa->arch));
                }
                FUNC11(oldlocale);
                if (FUNC7(p->mpa, r)) {
                    FUNC8(p->mpa);
                    p->mpa = NULL;
                }
                return -1;
            }
            FUNC11(oldlocale);
            s->pos += r;
        }
    }
    return 1;
}