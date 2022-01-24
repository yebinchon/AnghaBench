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
struct playlist_entry {char* filename; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct playlist*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct playlist*) ; 
 size_t FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC9 (char*,char*) ; 

void FUNC10(struct playlist *pl)
{
    if (!pl->first)
        return;
    char *edl = FUNC8(NULL, "edl://");
    for (struct playlist_entry *e = pl->first; e; e = e->next) {
        if (e != pl->first)
            edl = FUNC9(edl, ";");
        // Escape if needed
        if (e->filename[FUNC4(e->filename, "=%,;\n")] ||
            FUNC1(FUNC0(e->filename)).len != FUNC5(e->filename))
        {
            // %length%
            edl = FUNC6(edl, "%%%zd%%", FUNC5(e->filename));
        }
        edl = FUNC9(edl, e->filename);
    }
    FUNC3(pl);
    FUNC2(pl, edl);
    FUNC7(edl);
}