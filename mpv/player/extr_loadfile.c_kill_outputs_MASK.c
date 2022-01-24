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
struct track {scalar_t__ ao_c; scalar_t__ vo_c; int /*<<< orphan*/  type; int /*<<< orphan*/  user_tid; } ;
struct MPContext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct MPContext *mpctx, struct track *track)
{
    if (track->vo_c || track->ao_c) {
        FUNC0(mpctx, "deselecting track %d for lavfi-complex option\n",
                   track->user_tid);
        FUNC2(mpctx, track->type, NULL, 0);
    }
    FUNC1(!(track->vo_c || track->ao_c));
}