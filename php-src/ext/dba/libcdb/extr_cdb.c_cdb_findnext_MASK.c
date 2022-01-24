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
typedef  int uint32 ;
struct cdb {int loop; int hslots; int hpos; int khash; int kpos; int dlen; int dpos; } ;

/* Variables and functions */
 int FUNC0 (char*,unsigned int) ; 
 int FUNC1 (struct cdb*,char*,unsigned int,int) ; 
 int FUNC2 (struct cdb*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 

int FUNC4(struct cdb *c, char *key, unsigned int len)
{
	char buf[8];
	uint32 pos;
	uint32 u;

	if (!c->loop) {
		u = FUNC0(key, len);
		if (FUNC2(c, buf, 8, (u << 3) & 2047) == -1)
			return -1;
		FUNC3(buf + 4,&c->hslots);
		if (!c->hslots)
			return 0;
		FUNC3(buf, &c->hpos);
		c->khash = u;
		u >>= 8;
		u %= c->hslots;
		u <<= 3;
		c->kpos = c->hpos + u;
	}

	while (c->loop < c->hslots) {
		if (FUNC2(c, buf, 8, c->kpos) == -1)
			return -1;
		FUNC3(buf + 4, &pos);
		if (!pos)
			return 0;
		c->loop += 1;
		c->kpos += 8;
		if (c->kpos == c->hpos + (c->hslots << 3))
			c->kpos = c->hpos;
		FUNC3(buf, &u);
		if (u == c->khash) {
			if (FUNC2(c, buf, 8, pos) == -1)
				return -1;
			FUNC3(buf, &u);
			if (u == len)
			switch(FUNC1(c, key, len, pos + 8)) {
			case -1:
				return -1;
			case 1:
				FUNC3(buf + 4, &c->dlen);
				c->dpos = pos + 8 + len;
				return 1;
			}
		}
	}

	return 0;
}