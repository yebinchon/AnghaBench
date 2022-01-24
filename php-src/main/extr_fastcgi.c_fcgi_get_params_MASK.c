#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ fcgi_request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC3(fcgi_request *req, unsigned char *p, unsigned char *end)
{
	unsigned int name_len, val_len;

	while (p < end) {
		name_len = *p++;
		if (FUNC1(name_len >= 128)) {
			if (FUNC1(p + 3 >= end)) return 0;
			name_len = ((name_len & 0x7f) << 24);
			name_len |= (*p++ << 16);
			name_len |= (*p++ << 8);
			name_len |= *p++;
		}
		if (FUNC1(p >= end)) return 0;
		val_len = *p++;
		if (FUNC1(val_len >= 128)) {
			if (FUNC1(p + 3 >= end)) return 0;
			val_len = ((val_len & 0x7f) << 24);
			val_len |= (*p++ << 16);
			val_len |= (*p++ << 8);
			val_len |= *p++;
		}
		if (FUNC1(name_len + val_len > (unsigned int) (end - p))) {
			/* Malformated request */
			return 0;
		}
		FUNC2(&req->env, FUNC0(p, name_len), (char*)p, name_len, (char*)p + name_len, val_len);
		p += name_len + val_len;
	}
	return 1;
}