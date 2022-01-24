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
struct playlist_entry {int num_redirects; int /*<<< orphan*/  redirects; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct playlist_entry*,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC1 (struct playlist_entry*,char const*) ; 

void FUNC2(struct playlist *pl, const char *redirected_from)
{
    for (struct playlist_entry *e = pl->first; e; e = e->next) {
        if (e->num_redirects >= 10) // arbitrary limit for sanity
            break;
        char *s = FUNC1(e, redirected_from);
        if (s)
            FUNC0(e, e->redirects, e->num_redirects, s);
    }
}