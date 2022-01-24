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
struct hostsreader {char* ip; char* name; int /*<<< orphan*/  f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 

int FUNC3(struct hostsreader *ctx, char* buf, size_t bufsize) {
	while(1) {
		if(!FUNC0(buf, bufsize, ctx->f)) return 0;
		if(*buf == '#') continue;
		char *p = buf;
		size_t l = bufsize;
		ctx->ip = p;
		while(*p && !FUNC2(*p) && l) {
			p++;
			l--;
		}
		if(!l || !*p || p == ctx->ip) continue;
		*p = 0;
		p++;
		while(*p && FUNC2(*p) && l) {
			p++;
			l--;
		}
		if(!l || !*p) continue;
		ctx->name = p;
		while(*p && !FUNC2(*p) && l) {
			p++;
			l--;
		}
		if(!l || !*p) continue;
		*p = 0;
		if(FUNC1(ctx->ip)) return 1;
	}
}