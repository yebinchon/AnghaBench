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
struct target {int target_fds_size; int /*<<< orphan*/ * target_fds; } ;

/* Variables and functions */
 int all_files_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct target *w) {
    if(FUNC2(!w))
        return;

    if(FUNC2(!w->target_fds || w->target_fds_size < all_files_size)) {
        w->target_fds = FUNC1(w->target_fds, sizeof(int) * all_files_size);
        FUNC0(&w->target_fds[w->target_fds_size], 0, sizeof(int) * (all_files_size - w->target_fds_size));
        w->target_fds_size = all_files_size;
    }
}