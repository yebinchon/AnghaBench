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
struct TYPE_4__ {scalar_t__ host; } ;
typedef  TYPE_1__ php_url ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char const*,size_t) ; 

__attribute__((used)) static char *FUNC5(const char *resourcename,
		size_t resourcenamelen, int is_persistent)  /* {{{ */
{
	php_url *url;

	if (!resourcename) {
		return NULL;
	}

	url = FUNC4(resourcename, resourcenamelen);
	if (!url) {
		return NULL;
	}

	if (url->host) {
		const char * host = FUNC1(url->host);
		char * url_name = NULL;
		size_t len = FUNC0(url->host);

		/* skip trailing dots */
		while (len && host[len-1] == '.') {
			--len;
		}

		if (len) {
			url_name = FUNC2(host, len, is_persistent);
		}

		FUNC3(url);
		return url_name;
	}

	FUNC3(url);
	return NULL;
}