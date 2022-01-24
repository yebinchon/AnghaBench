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
typedef  int /*<<< orphan*/  lzma_ret ;
typedef  int /*<<< orphan*/  lzma_lz_options ;
struct TYPE_4__ {int /*<<< orphan*/  coder; } ;
typedef  TYPE_1__ lzma_lz_decoder ;
typedef  int /*<<< orphan*/  lzma_allocator ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_OK ; 
 int /*<<< orphan*/  LZMA_PROG_ERROR ; 
 int /*<<< orphan*/  LZMA_VLI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static lzma_ret
FUNC5(lzma_lz_decoder *lz, lzma_allocator *allocator,
		const void *options, lzma_lz_options *lz_options)
{
	if (!FUNC0(options))
		return LZMA_PROG_ERROR;

	FUNC4(FUNC3(
			lz, allocator, options, lz_options));

	FUNC1(lz->coder, options);
	FUNC2(lz->coder, LZMA_VLI_UNKNOWN);

	return LZMA_OK;
}