#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  xtr_data; int /*<<< orphan*/ * buf; } ;
struct TYPE_12__ {char* (* signature ) (TYPE_3__*,int) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  loaded; } ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  TYPE_1__ RBinXtrData ;
typedef  TYPE_2__ RBinPlugin ;
typedef  TYPE_3__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  R_MODE_JSON ; 
 int /*<<< orphan*/  UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  bin ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ file ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ output ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  rad ; 
 char* FUNC21 (char*,char) ; 
 char* FUNC22 (char const*) ; 
 char* FUNC23 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC24(const char *op) {
	char *arg = NULL, *ptr = NULL, *ptr2 = NULL;
	bool rc = true;

	/* Implement alloca with fixed-size buffer? */
	if (!(arg = FUNC22 (op))) {
		return false;
	}
	if ((ptr = FUNC21 (arg, '/'))) {
		*ptr++ = 0;
		if ((ptr2 = FUNC21 (ptr, '/'))) {
			ptr2[0] = '\0';
			ptr2++;
		}
	}
	if (!output) {
		output = file;
	}
	RBinFile *bf = FUNC3 (bin);
	if (bf) {
		RBuffer *nb = FUNC14 (bf->buf);
		FUNC13 (bf->buf);
		bf->buf = nb;
	}

	switch (arg[0]) {
	case 'e':
		rc = FUNC8 (bin, FUNC18 (NULL, ptr));
		if (rc) {
			rc = FUNC9 (bin, output);
		}
		break;
	case 'd':
		if (!ptr) {
			goto _rabin_do_operation_error;
		}
		switch (*ptr) {
		case 's':
			if (ptr2) {
				if (!FUNC20 (FUNC18 (NULL, ptr2))) {
					goto error;
				}
			} else if (!FUNC20 (0)) {
				goto error;
			}
			break;
		case 'S':
			if (!ptr2) {
				goto _rabin_do_operation_error;
			}
			if (!FUNC0 (ptr2)) {
				goto error;
			}
			break;
		default:
			goto _rabin_do_operation_error;
		}
		break;
	case 'a':
		if (!ptr) {
			goto _rabin_do_operation_error;
		}
		switch (*ptr) {
		case 'l':
			if (!ptr2 || !FUNC7 (bin, ptr2)) {
				goto error;
			}
			rc = FUNC9 (bin, output);
			break;
		default:
			goto _rabin_do_operation_error;
		}
		break;
	case 'R':
		FUNC10 (bin);
		rc = FUNC9 (bin, output);
		break;
	case 'C':
		{
		RBinFile *cur = FUNC3 (bin);
		RBinPlugin *plg = FUNC4 (cur);
		if (!plg && cur) {
			// are we in xtr?
			if (cur->xtr_data) {
				// load the first one
				RBinXtrData *xtr_data = FUNC17 (cur->xtr_data, 0);
				if (xtr_data && !xtr_data->loaded && !FUNC5 (bin, cur,
					UT64_MAX, FUNC6 (bin), xtr_data)) {
					break;
				}
			}
			plg = FUNC4 (cur);
			if (!plg) {
				break;
			}
		}
		if (plg && plg->signature) {
			char *sign = plg->signature (cur, rad == R_MODE_JSON);
			if (sign) {
				FUNC16 (sign);
				FUNC15 ();
				FUNC2 (sign);
			}
		}
		}
		break;
	case 'r':
		FUNC12 (bin, ptr, FUNC18 (NULL, ptr2));
		rc = FUNC9 (bin, output);
		break;
	case 'p':
		{
			int perms = (int)FUNC18 (NULL, ptr2);
			if (!perms) {
				perms = FUNC19 (ptr2);
			}
			FUNC11 (bin, ptr, perms);
			rc = FUNC9 (bin, output);
		}
		break;
	default:
	_rabin_do_operation_error:
		FUNC1 ("Unknown operation. use -O help\n");
		goto error;
	}
	if (!rc) {
		FUNC1 ("Cannot dump :(\n");
	}
	FUNC2 (arg);
	return true;
error:
	FUNC2 (arg);
	return false;
}