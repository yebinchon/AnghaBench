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
struct TYPE_6__ {size_t avail_in; int /*<<< orphan*/ * next_in; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int PHP_ZLIB_ENCODING_ANY ; 
 int PHP_ZLIB_ENCODING_RAW ; 
 int SUCCESS ; 
#define  Z_DATA_ERROR 129 
 int Z_OK ; 
#define  Z_STREAM_END 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  php_zlib_alloc ; 
 int /*<<< orphan*/  php_zlib_free ; 
 int FUNC4 (TYPE_1__*,size_t,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(const char *in_buf, size_t in_len, char **out_buf, size_t *out_len, int encoding, size_t max_len)
{
	int status = Z_DATA_ERROR;
	z_stream Z;

	FUNC2(&Z, 0, sizeof(z_stream));
	Z.zalloc = php_zlib_alloc;
	Z.zfree = php_zlib_free;

	if (in_len) {
retry_raw_inflate:
		status = FUNC1(&Z, encoding);
		if (Z_OK == status) {
			Z.next_in = (Bytef *) in_buf;
			Z.avail_in = in_len + 1; /* NOTE: data must be zero terminated */

			switch (status = FUNC4(&Z, max_len, out_buf, out_len)) {
				case Z_STREAM_END:
					FUNC0(&Z);
					return SUCCESS;

				case Z_DATA_ERROR:
					/* raw deflated data? */
					if (PHP_ZLIB_ENCODING_ANY == encoding) {
						FUNC0(&Z);
						encoding = PHP_ZLIB_ENCODING_RAW;
						goto retry_raw_inflate;
					}
			}
			FUNC0(&Z);
		}
	}

	*out_buf = NULL;
	*out_len = 0;

	FUNC3(NULL, E_WARNING, "%s", FUNC5(status));
	return FAILURE;
}