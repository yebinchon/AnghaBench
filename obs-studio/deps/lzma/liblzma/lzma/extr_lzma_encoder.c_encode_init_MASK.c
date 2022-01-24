#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ read_pos; scalar_t__ read_limit; scalar_t__ action; scalar_t__ write_pos; int /*<<< orphan*/ * buffer; scalar_t__ read_ahead; } ;
typedef  TYPE_1__ lzma_mf ;
struct TYPE_8__ {int is_initialized; int /*<<< orphan*/ * literal; int /*<<< orphan*/  rc; int /*<<< orphan*/ ** is_match; } ;
typedef  TYPE_2__ lzma_coder ;

/* Variables and functions */
 scalar_t__ LZMA_FINISH ; 
 scalar_t__ LZMA_RUN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(lzma_coder *coder, lzma_mf *mf)
{
	FUNC0(FUNC1(mf) == 0);

	if (mf->read_pos == mf->read_limit) {
		if (mf->action == LZMA_RUN)
			return false; // We cannot do anything.

		// We are finishing (we cannot get here when flushing).
		FUNC0(mf->write_pos == mf->read_pos);
		FUNC0(mf->action == LZMA_FINISH);
	} else {
		// Do the actual initialization. The first LZMA symbol must
		// always be a literal.
		FUNC2(mf, 1);
		mf->read_ahead = 0;
		FUNC3(&coder->rc, &coder->is_match[0][0], 0);
		FUNC4(&coder->rc, coder->literal[0], 8, mf->buffer[0]);
	}

	// Initialization is done (except if empty file).
	coder->is_initialized = true;

	return true;
}