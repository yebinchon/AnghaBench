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
typedef  int /*<<< orphan*/  ut32 ;
struct cdb_make {int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cdb_make*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cdb_make*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4(struct cdb_make *c, const char *key, ut32 keylen, const char *data, ut32 datalen) {
	/* add tailing \0 to allow mmap to work later */
	keylen++;
	datalen++;
	if (!FUNC1 (c, keylen, datalen)) {
		return 0;
	}
	if (!FUNC0 (&c->b, key, keylen)) {
		return 0;
	}
	if (!FUNC0 (&c->b, data, datalen)) {
		return 0;
	}
	return FUNC2 (c, keylen, datalen, FUNC3 (key));
}