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
typedef  int rs_proxyType ;

/* Variables and functions */
#define  RS_PT_HTTP 130 
#define  RS_PT_SOCKS4 129 
#define  RS_PT_SOCKS5 128 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static int FUNC5(const char *proxystring,
	char *type_buf,
	char* host_buf,
	int *port_n,
	char *user_buf,
	char* pass_buf)
{
	const char* p;
	rs_proxyType proxytype;

	size_t next_token = 6, ul = 0, pl = 0, hl;
	if(!proxystring[0] || !proxystring[1] || !proxystring[2] || !proxystring[3] || !proxystring[4] || !proxystring[5]) goto inv_string;
	if(*proxystring == 's') {
		switch(proxystring[5]) {
			case '5': proxytype = RS_PT_SOCKS5; break;
			case '4': proxytype = RS_PT_SOCKS4; break;
			default: goto inv_string;
		}
	} else if(*proxystring == 'h') {
		proxytype = RS_PT_HTTP;
		next_token = 4;
	} else goto inv_string;
	if(
	   proxystring[next_token++] != ':' ||
	   proxystring[next_token++] != '/' ||
	   proxystring[next_token++] != '/') goto inv_string;
	const char *at = FUNC4(proxystring+next_token, '@');
	if(at) {
		if(proxytype == RS_PT_SOCKS4)
			return 0;
		p = FUNC2(proxystring+next_token, ':');
		if(!p || p >= at) goto inv_string;
		const char *u = proxystring+next_token;
		ul = p-u;
		p++;
		pl = at-p;
		if(proxytype == RS_PT_SOCKS5 && (ul > 255 || pl > 255))
			return 0;
		FUNC1(user_buf, u, ul);
		user_buf[ul]=0;
		FUNC1(pass_buf, p, pl);
		pass_buf[pl]=0;
		next_token += 2+ul+pl;
	} else {
		user_buf[0]=0;
		pass_buf[0]=0;
	}
	const char* h = proxystring+next_token;
	p = FUNC2(h, ':');
	if(!p) goto inv_string;
	hl = p-h;
	if(hl > 255)
		return 0;
	FUNC1(host_buf, h, hl);
	host_buf[hl]=0;
	*port_n = FUNC0(p+1);
	switch(proxytype) {
		case RS_PT_SOCKS4:
			FUNC3(type_buf, "socks4");
			break;
		case RS_PT_SOCKS5:
			FUNC3(type_buf, "socks5");
			break;
		case RS_PT_HTTP:
			FUNC3(type_buf, "http");
			break;
		default:
			return 0;
	}
	return 1;
inv_string:
	return 0;
}