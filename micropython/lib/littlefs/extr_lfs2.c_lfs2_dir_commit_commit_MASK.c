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
struct lfs2_dir_commit_commit {int /*<<< orphan*/  commit; int /*<<< orphan*/  lfs2; } ;
typedef  int /*<<< orphan*/  lfs2_tag_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static int FUNC1(void *p, lfs2_tag_t tag, const void *buffer) {
    struct lfs2_dir_commit_commit *commit = p;
    return FUNC0(commit->lfs2, commit->commit, tag, buffer);
}