#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
struct entry {int flags; scalar_t__ t; scalar_t__ size; scalar_t__ blocks; scalar_t__ name; } ;
typedef  struct entry* pEntry ;
struct TYPE_2__ {scalar_t__ extnorder; scalar_t__ blkorder; scalar_t__ sizeorder; scalar_t__ mtimeorder; } ;

/* Variables and functions */
 int DIR_OR_LINK_TO_DIR ; 
 TYPE_1__ cfg ; 
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const void *va, const void *vb)
{
	const struct entry *pa = (pEntry)va;
	const struct entry *pb = (pEntry)vb;

	if ((pb->flags & DIR_OR_LINK_TO_DIR) != (pa->flags & DIR_OR_LINK_TO_DIR)) {
		if (pb->flags & DIR_OR_LINK_TO_DIR)
			return 1;
		return -1;
	}

	/* Sort based on specified order */
	if (cfg.mtimeorder) {
		if (pb->t > pa->t)
			return 1;
		if (pb->t < pa->t)
			return -1;
	} else if (cfg.sizeorder) {
		if (pb->size > pa->size)
			return 1;
		if (pb->size < pa->size)
			return -1;
	} else if (cfg.blkorder) {
		if (pb->blocks > pa->blocks)
			return 1;
		if (pb->blocks < pa->blocks)
			return -1;
	} else if (cfg.extnorder && !(pb->flags & DIR_OR_LINK_TO_DIR)) {
		char *extna = FUNC3((uchar *)pa->name, '.', FUNC2(pa->name));
		char *extnb = FUNC3((uchar *)pb->name, '.', FUNC2(pb->name));

		if (extna || extnb) {
			if (!extna)
				return 1;

			if (!extnb)
				return -1;

			int ret = FUNC1(extna, extnb);

			if (ret)
				return ret;
		}
	}

	return FUNC0(pa->name, pb->name);
}