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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline char *FUNC4(char *d, const char *s, size_t usable, int showoldunits) {
    const char *sorig = s;
    char *ret = d;
    size_t n;

    // Fix for issue 5227
    if (FUNC3(showoldunits)) {
		static struct {
			const char *newunit;
			uint32_t hash;
			const char *oldunit;
		} units[] = {
				  {"KiB/s", 0, "kilobytes/s"}
				, {"MiB/s", 0, "MB/s"}
				, {"GiB/s", 0, "GB/s"}
				, {"KiB"  , 0, "KB"}
				, {"MiB"  , 0, "MB"}
				, {"GiB"  , 0, "GB"}
				, {"inodes"       , 0, "Inodes"}
				, {"percentage"   , 0, "percent"}
				, {"faults/s"     , 0, "page faults/s"}
				, {"KiB/operation", 0, "kilobytes per operation"}
				, {"milliseconds/operation", 0, "ms per operation"}
				, {NULL, 0, NULL}
		};
		static int initialized = 0;
		int i;

		if(FUNC3(!initialized)) {
			for (i = 0; units[i].newunit; i++)
				units[i].hash = FUNC1(units[i].newunit);
			initialized = 1;
		}

		uint32_t hash = FUNC1(s);
		for(i = 0; units[i].newunit ; i++) {
			if(FUNC3(hash == units[i].hash && !FUNC2(s, units[i].newunit))) {
				// info("matched extension for filename '%s': '%s'", filename, last_dot);
				s=units[i].oldunit;
				sorig = s;
				break;
			}
		}
    }
    *d++ = '_';
    for(n = 1; *s && n < usable ; d++, s++, n++) {
        register char c = *s;

        if(!FUNC0(c)) *d = '_';
        else *d = c;
    }

    if(n == 2 && sorig[0] == '%') {
        n = 0;
        d = ret;
        s = "_percent";
        for( ; *s && n < usable ; n++) *d++ = *s++;
    }
    else if(n > 3 && sorig[n-3] == '/' && sorig[n-2] == 's') {
        n = n - 2;
        d -= 2;
        s = "_persec";
        for( ; *s && n < usable ; n++) *d++ = *s++;
    }

    *d = '\0';

    return ret;
}