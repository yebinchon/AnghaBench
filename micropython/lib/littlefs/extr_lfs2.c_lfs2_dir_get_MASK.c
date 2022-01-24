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
typedef  int /*<<< orphan*/  lfs2_tag_t ;
typedef  int /*<<< orphan*/  lfs2_t ;
typedef  int /*<<< orphan*/  lfs2_stag_t ;
typedef  int /*<<< orphan*/  lfs2_mdir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static lfs2_stag_t FUNC2(lfs2_t *lfs2, const lfs2_mdir_t *dir,
        lfs2_tag_t gmask, lfs2_tag_t gtag, void *buffer) {
    return FUNC0(lfs2, dir,
            gmask, gtag,
            0, buffer, FUNC1(gtag));
}