#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ flatfile ;
struct TYPE_6__ {size_t dsize; void* dptr; } ;
typedef  TYPE_2__ datum ;

/* Variables and functions */
 size_t FLATFILE_BLOCK_SIZE ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(flatfile *dba, datum key_datum) {
	size_t buf_size = FLATFILE_BLOCK_SIZE;
	char *buf = FUNC2(buf_size);
	size_t num;
	int ret=0;
	void *key = key_datum.dptr;
	size_t size = key_datum.dsize;

	FUNC8(dba->fp);
	while (!FUNC5(dba->fp)) {
		if (!FUNC6(dba->fp, buf, 15)) {
			break;
		}
		num = FUNC0(buf);
		if (num >= buf_size) {
			buf_size = num + FLATFILE_BLOCK_SIZE;
			buf = FUNC3(buf, buf_size);
		}
		num = FUNC7(dba->fp, buf, num);

		if (size == num) {
			if (!FUNC4(buf, key, size)) {
				ret = 1;
				break;
			}
		}
		if (!FUNC6(dba->fp, buf, 15)) {
			break;
		}
		num = FUNC0(buf);
		if (num >= buf_size) {
			buf_size = num + FLATFILE_BLOCK_SIZE;
			buf = FUNC3(buf, buf_size);
		}
		num = FUNC7(dba->fp, buf, num);
	}
	FUNC1(buf);
	return ret;
}