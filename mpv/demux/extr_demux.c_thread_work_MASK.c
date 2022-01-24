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
struct demux_internal {scalar_t__ next_cache_update; int /*<<< orphan*/  lock; int /*<<< orphan*/  eof; scalar_t__ seeking; scalar_t__ back_any_need_recheck; scalar_t__ need_back_seek; scalar_t__ tracks_switched; int /*<<< orphan*/  opts_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC2 (struct demux_internal*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC9 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC10 (struct demux_internal*) ; 

__attribute__((used)) static bool FUNC11(struct demux_internal *in)
{
    if (FUNC3(in->opts_cache))
        FUNC10(in);
    if (in->tracks_switched) {
        FUNC2(in);
        return true;
    }
    if (in->need_back_seek) {
        FUNC5(in);
        return true;
    }
    if (in->back_any_need_recheck) {
        FUNC0(in);
        return true;
    }
    if (in->seeking) {
        FUNC1(in);
        return true;
    }
    if (!in->eof) {
        if (FUNC8(in))
            return true; // read_packet unlocked, so recheck conditions
    }
    if (FUNC4() >= in->next_cache_update) {
        FUNC7(&in->lock);
        FUNC9(in);
        FUNC6(&in->lock);
        return true;
    }
    return false;
}