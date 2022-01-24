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
typedef  int /*<<< orphan*/  tag ;
typedef  scalar_t__ lfs2_tag_t ;
typedef  scalar_t__ lfs2_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline lfs2_size_t FUNC2(lfs2_tag_t tag) {
    return sizeof(tag) + FUNC1(tag + FUNC0(tag));
}