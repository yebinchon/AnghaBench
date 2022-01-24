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
typedef  size_t uint32_t ;
struct TYPE_4__ {size_t pos_mask; size_t state; int /*<<< orphan*/ * is_rep; int /*<<< orphan*/  rc; int /*<<< orphan*/ ** is_match; } ;
typedef  TYPE_1__ lzma_coder ;

/* Variables and functions */
 int /*<<< orphan*/  MATCH_LEN_MIN ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(lzma_coder *coder, uint32_t position)
{
	const uint32_t pos_state = position & coder->pos_mask;
	FUNC1(&coder->rc, &coder->is_match[coder->state][pos_state], 1);
	FUNC1(&coder->rc, &coder->is_rep[coder->state], 0);
	FUNC0(coder, pos_state, UINT32_MAX, MATCH_LEN_MIN);
}