#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut64 ;
struct TYPE_6__ {int page_size; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int) ; 

int FUNC3(libgdbr_t *g, ut64 address, ut8 *buf, int len) {
	int ret_len, ret, tmp;
	int page_size = g->page_size;
	ret_len = 0;

	if (!FUNC0 (g)) {
		goto end;
	}

	// Read and round up to page size
	tmp = page_size - (address & (page_size - 1));
	if (tmp >= len) {
		ret_len = FUNC2 (g, address, buf, len);
		goto end;
	}
	if ((ret = FUNC2 (g, address, buf, tmp)) != tmp) {
		ret_len = ret;
		goto end;
	}
	len -= tmp;
	address += tmp;
	buf += tmp;
	ret_len += ret;
	// Read complete pages
	while (len > page_size) {
		if ((ret = FUNC2 (g, address, buf, page_size)) != page_size) {
			if (ret < 1) {
				goto end;
			}
			ret_len += ret;
			goto end;
		}
		len -= page_size;
		address += page_size;
		buf += page_size;
		ret_len += page_size;
	}
	// Read left-overs
	if ((ret = FUNC2 (g, address, buf, len)) < 0) {
		goto end;
	}

	ret_len += ret;
end:
	FUNC1 (g);
	return ret_len;
}