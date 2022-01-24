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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut64 ;
struct TYPE_4__ {int /*<<< orphan*/ * io; } ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ST32_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static ut8 *FUNC10(RCore **c, const char *file, int *sz) {
	RIODesc *d;
	RIO *io;
	if (c && file && FUNC9 (file, "://")) {
		ut8 *data = NULL;
		ut64 size;
		if (!*c) {
			*c = FUNC3 (NULL);
		}
		if (!*c) {
			FUNC2 ("opencore failed\n");
			return NULL;
		}
		io = (*c)->io;
		d = FUNC6 (io, file, 0, 0);
		if (!d) {
			return NULL;
		}
		size = FUNC8 (io);
		if (size > 0 && size < ST32_MAX) {
			data = FUNC1 (1, size);
			if (FUNC7 (io, 0, data, size)) {
				if (sz) {
					*sz = size;
				}
			} else {
				FUNC2 ("slurp: read error\n");
				FUNC0 (data);
			}
		} else {
			FUNC2 ("slurp: Invalid file size\n");
		}
		FUNC5 (d);
		return data;
	}
	return (ut8 *) FUNC4 (file, sz);
}