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
struct image_desc {size_t file_size; size_t out_size; int /*<<< orphan*/  csum; int /*<<< orphan*/  padc; int /*<<< orphan*/  file_name; } ;
struct csum_state {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_TYPE_32 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (struct csum_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct csum_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct image_desc*,struct csum_state*) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct csum_state*) ; 

int
FUNC5(FILE *outfile, struct image_desc *desc)
{
	int res;
	struct csum_state css;
	size_t padlen;

	res = 0;

	if (!desc->file_size)
		return 0;

	FUNC0(2, "writing image, file=%s, file_size=%d\n",
		desc->file_name, desc->file_size);

	FUNC2(&css, CSUM_TYPE_32);

	res = FUNC3(outfile, desc, &css);
	if (res)
		return res;

	/* write padding data if neccesary */
	padlen = desc->out_size - desc->file_size;
	FUNC0(1,"padding desc, length=%zu", padlen);
	res = FUNC4(outfile, padlen, desc->padc, &css);

	desc->csum = FUNC1(&css);

	return res;
}