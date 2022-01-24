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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {size_t avail_in; size_t avail_out; int /*<<< orphan*/  total_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/ * next_in; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  MAX_MEM_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Z_DEFAULT_STRATEGY ; 
 int /*<<< orphan*/  Z_DEFLATED ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  php_zlib_alloc ; 
 int /*<<< orphan*/  php_zlib_free ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string *FUNC12(const char *in_buf, size_t in_len, int encoding, int level)
{
	int status;
	z_stream Z;
	zend_string *out;

	FUNC6(&Z, 0, sizeof(z_stream));
	Z.zalloc = php_zlib_alloc;
	Z.zfree = php_zlib_free;

	if (Z_OK == (status = FUNC5(&Z, level, Z_DEFLATED, encoding, MAX_MEM_LEVEL, Z_DEFAULT_STRATEGY))) {
		out = FUNC9(FUNC0(in_len), 0);

		Z.next_in = (Bytef *) in_buf;
		Z.next_out = (Bytef *) FUNC2(out);
		Z.avail_in = in_len;
		Z.avail_out = FUNC1(out);

		status = FUNC3(&Z, Z_FINISH);
		FUNC4(&Z);

		if (Z_STREAM_END == status) {
			/* size buffer down to actual length */
			out = FUNC11(out, Z.total_out, 0);
			FUNC2(out)[FUNC1(out)] = '\0';
			return out;
		} else {
			FUNC10(out);
		}
	}

	FUNC7(NULL, E_WARNING, "%s", FUNC8(status));
	return NULL;
}