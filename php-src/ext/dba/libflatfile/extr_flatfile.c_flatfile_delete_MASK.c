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
struct TYPE_6__ {char* dptr; size_t dsize; } ;
typedef  TYPE_2__ datum ;

/* Variables and functions */
 int FAILURE ; 
 size_t FLATFILE_BLOCK_SIZE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(flatfile *dba, datum key_datum) {
	char *key = key_datum.dptr;
	size_t size = key_datum.dsize;
	size_t buf_size = FLATFILE_BLOCK_SIZE;
	char *buf = FUNC2(buf_size);
	size_t num;
	size_t pos;

	FUNC10(dba->fp);
	while(!FUNC5(dba->fp)) {
		/* read in the length of the key name */
		if (!FUNC7(dba->fp, buf, 15)) {
			break;
		}
		num = FUNC0(buf);
		if (num >= buf_size) {
			buf_size = num + FLATFILE_BLOCK_SIZE;
			buf = FUNC3(buf, buf_size);
		}
		pos = FUNC12(dba->fp);

		/* read in the key name */
		num = FUNC9(dba->fp, buf, num);

		if (size == num && !FUNC4(buf, key, size)) {
			FUNC11(dba->fp, pos, SEEK_SET);
			FUNC8(dba->fp, 0);
			FUNC6(dba->fp);
			FUNC11(dba->fp, 0L, SEEK_END);
			FUNC1(buf);
			return SUCCESS;
		}

		/* read in the length of the value */
		if (!FUNC7(dba->fp, buf, 15)) {
			break;
		}
		num = FUNC0(buf);
		if (num >= buf_size) {
			buf_size = num + FLATFILE_BLOCK_SIZE;
			buf = FUNC3(buf, buf_size);
		}
		/* read in the value */
		num = FUNC9(dba->fp, buf, num);
	}
	FUNC1(buf);
	return FAILURE;
}