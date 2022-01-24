#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct priv {int entry_size; int /*<<< orphan*/  entry_name; struct mp_archive* mpa; int /*<<< orphan*/  src; } ;
struct mp_archive {int /*<<< orphan*/  entry; int /*<<< orphan*/  locale; int /*<<< orphan*/  entry_filename; } ;
struct TYPE_4__ {int /*<<< orphan*/  log; scalar_t__ pos; struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_ARCHIVE_FLAG_UNSAFE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int STREAM_ERROR ; 
 int STREAM_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_archive*) ; 
 struct mp_archive* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mp_archive*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(stream_t *s)
{
    struct priv *p = s->priv;
    FUNC3(p->mpa);
    s->pos = 0;
    p->mpa = FUNC4(s->log, p->src, MP_ARCHIVE_FLAG_UNSAFE);
    if (!p->mpa)
        return STREAM_ERROR;

    // Follows the same logic as demux_libarchive.c.
    struct mp_archive *mpa = p->mpa;
    while (FUNC5(mpa)) {
        if (FUNC6(p->entry_name, mpa->entry_filename) == 0) {
            locale_t oldlocale = FUNC7(mpa->locale);
            p->entry_size = -1;
            if (FUNC2(mpa->entry))
                p->entry_size = FUNC1(mpa->entry);
            FUNC7(oldlocale);
            return STREAM_OK;
        }
    }

    FUNC3(p->mpa);
    p->mpa = NULL;
    FUNC0(s, "archive entry not found. '%s'\n", p->entry_name);
    return STREAM_ERROR;
}