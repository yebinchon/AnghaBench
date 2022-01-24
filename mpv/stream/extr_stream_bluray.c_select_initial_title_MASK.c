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
struct bluray_priv_s {scalar_t__ cfg_title; int cfg_playlist; int current_title; int /*<<< orphan*/  bd; } ;
struct TYPE_4__ {struct bluray_priv_s* priv; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 scalar_t__ BLURAY_DEFAULT_TITLE ; 
 scalar_t__ BLURAY_PLAYLIST_TITLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bluray_priv_s*,int) ; 
 scalar_t__ FUNC3 (struct bluray_priv_s*,int) ; 

__attribute__((used)) static void FUNC4(stream_t *s, int title_guess) {
    struct bluray_priv_s *b = s->priv;

    if (b->cfg_title == BLURAY_PLAYLIST_TITLE) {
        if (!FUNC2(b, b->cfg_playlist))
            FUNC0(s, "Couldn't start playlist '%05d'.\n", b->cfg_playlist);
        b->current_title = FUNC1(b->bd);
    } else {
        int title = -1;
        if (b->cfg_title != BLURAY_DEFAULT_TITLE )
            title = b->cfg_title;
        else
            title = title_guess;
        if (title < 0)
            return;

        if (FUNC3(b, title))
            b->current_title = title;
        else {
            FUNC0(s, "Couldn't start title '%d'.\n", title);
            b->current_title = FUNC1(b->bd);
        }
    }
}