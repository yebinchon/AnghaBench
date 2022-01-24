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
struct cdb_make {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int FUNC1 (struct cdb_make*,unsigned int,unsigned int) ; 
 int FUNC2 (struct cdb_make*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cdb_make*,char*,unsigned int) ; 

int FUNC4(struct cdb_make *c,char *key,unsigned int keylen,char *data,unsigned int datalen)
{
	if (FUNC1(c, keylen, datalen) == -1)
		return -1;
	if (FUNC3(c, key, keylen) != 0)
		return -1;
	if (FUNC3(c, data, datalen) != 0)
		return -1;
	return FUNC2(c, keylen, datalen, FUNC0(key, keylen));
}