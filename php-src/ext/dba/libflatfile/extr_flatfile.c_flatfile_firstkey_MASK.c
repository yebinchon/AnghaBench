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
struct TYPE_5__ {int /*<<< orphan*/  fp; int /*<<< orphan*/  CurrentFlatFilePos; } ;
typedef  TYPE_1__ flatfile ;
struct TYPE_6__ {char* dptr; size_t dsize; } ;
typedef  TYPE_2__ datum ;

/* Variables and functions */
 size_t FLATFILE_BLOCK_SIZE ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

datum FUNC9(flatfile *dba) {
	datum res;
	size_t num;
	size_t buf_size = FLATFILE_BLOCK_SIZE;
	char *buf = FUNC2(buf_size);

	FUNC7(dba->fp);
	while(!FUNC4(dba->fp)) {
		if (!FUNC5(dba->fp, buf, 15)) {
			break;
		}
		num = FUNC0(buf);
		if (num >= buf_size) {
			buf_size = num + FLATFILE_BLOCK_SIZE;
			buf = FUNC3(buf, buf_size);
		}
		num = FUNC6(dba->fp, buf, num);

		if (*(buf) != 0) {
			dba->CurrentFlatFilePos = FUNC8(dba->fp);
			res.dptr = buf;
			res.dsize = num;
			return res;
		}
		if (!FUNC5(dba->fp, buf, 15)) {
			break;
		}
		num = FUNC0(buf);
		if (num >= buf_size) {
			buf_size = num + FLATFILE_BLOCK_SIZE;
			buf = FUNC3(buf, buf_size);
		}
		num = FUNC6(dba->fp, buf, num);
	}
	FUNC1(buf);
	res.dptr = NULL;
	res.dsize = 0;
	return res;
}