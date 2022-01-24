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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,...) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char*,unsigned int) ; 
 scalar_t__ FUNC6 (char*,int,unsigned int) ; 
 scalar_t__ FUNC7 (char*,int,int,unsigned int) ; 
 scalar_t__ FUNC8 (char*,int,unsigned int) ; 
 scalar_t__ FUNC9 (char*,unsigned int) ; 
 char* FUNC10 (char*,char) ; 
 unsigned int FUNC11 (char*,char**,int) ; 

__attribute__((used)) static void FUNC12(FILE *f)
{
	char buf[512], *cp;
	unsigned int linectr = 0;
	int lastvendor = -1;
	int lastclass = -1;
	int lastsubclass = -1;
	int lasthut = -1;
	int lastlang = -1;
	unsigned int u;

	while (FUNC2(buf, sizeof(buf), f)) {
		linectr++;
		/* remove line ends */
		cp = FUNC10(buf, '\r');
		if (cp)
			*cp = 0;
		cp = FUNC10(buf, '\n');
		if (cp)
			*cp = 0;
		if (buf[0] == '#' || !buf[0])
			continue;
		cp = buf;
		if (buf[0] == 'P' && buf[1] == 'H' && buf[2] == 'Y' &&
		    buf[3] == 'S' && buf[4] == 'D' &&
		    buf[5] == 'E' && buf[6] == 'S' && /*isspace(buf[7])*/
		    buf[7] == ' ') {
			continue;
		}
		if (buf[0] == 'P' && buf[1] == 'H' &&
		    buf[2] == 'Y' && /*isspace(buf[3])*/ buf[3] == ' ') {
			continue;
		}
		if (buf[0] == 'B' && buf[1] == 'I' && buf[2] == 'A' &&
		    buf[3] == 'S' && /*isspace(buf[4])*/ buf[4] == ' ') {
			continue;
		}
		if (buf[0] == 'L' && /*isspace(buf[1])*/ buf[1] == ' ') {
			lasthut = lastclass = lastvendor = lastsubclass = -1;
			/*
			 * set 1 as pseudo-id to indicate that the parser is
			 * in a `L' section.
			 */
			lastlang = 1;
			continue;
		}
		if (buf[0] == 'C' && /*isspace(buf[1])*/ buf[1] == ' ') {
			/* class spec */
			cp = buf+2;
			while (FUNC3(*cp))
				cp++;
			if (!FUNC4(*cp)) {
				FUNC1("Invalid class spec at line %u", linectr);
				continue;
			}
			u = FUNC11(cp, &cp, 16);
			while (FUNC3(*cp))
				cp++;
			if (!*cp) {
				FUNC1("Invalid class spec at line %u", linectr);
				continue;
			}
			if (FUNC5(cp, u))
				FUNC1("Duplicate class spec at line %u class %04x %s",
				    linectr, u, cp);
			FUNC0("line %5u class %02x %s", linectr, u, cp);
			lasthut = lastlang = lastvendor = lastsubclass = -1;
			lastclass = u;
			continue;
		}
		if (buf[0] == 'A' && buf[1] == 'T' && FUNC3(buf[2])) {
			/* audio terminal type spec */
			continue;
		}
		if (buf[0] == 'H' && buf[1] == 'C' && buf[2] == 'C'
		    && FUNC3(buf[3])) {
			/* HID Descriptor bCountryCode */
			continue;
		}
		if (FUNC4(*cp)) {
			/* vendor */
			u = FUNC11(cp, &cp, 16);
			while (FUNC3(*cp))
				cp++;
			if (!*cp) {
				FUNC1("Invalid vendor spec at line %u", linectr);
				continue;
			}
			if (FUNC9(cp, u))
				FUNC1("Duplicate vendor spec at line %u vendor %04x %s",
				    linectr, u, cp);
			FUNC0("line %5u vendor %04x %s", linectr, u, cp);
			lastvendor = u;
			lasthut = lastlang = lastclass = lastsubclass = -1;
			continue;
		}
		if (buf[0] == '\t' && FUNC4(buf[1])) {
			/* product or subclass spec */
			u = FUNC11(buf+1, &cp, 16);
			while (FUNC3(*cp))
				cp++;
			if (!*cp) {
				FUNC1("Invalid product/subclass spec at line %u",
				    linectr);
				continue;
			}
			if (lastvendor != -1) {
				if (FUNC6(cp, lastvendor, u))
					FUNC1("Duplicate product spec at line %u product %04x:%04x %s",
					    linectr, lastvendor, u, cp);
				FUNC0("line %5u product %04x:%04x %s", linectr,
				    lastvendor, u, cp);
				continue;
			}
			if (lastclass != -1) {
				if (FUNC8(cp, lastclass, u))
					FUNC1("Duplicate subclass spec at line %u class %02x:%02x %s",
					    linectr, lastclass, u, cp);
				FUNC0("line %5u subclass %02x:%02x %s", linectr,
				    lastclass, u, cp);
				lastsubclass = u;
				continue;
			}
			if (lasthut != -1) {
				/* do not store hut */
				continue;
			}
			if (lastlang != -1) {
				/* do not store langid */
				continue;
			}
			FUNC1("Product/Subclass spec without prior Vendor/Class spec at line %u",
			    linectr);
			continue;
		}
		if (buf[0] == '\t' && buf[1] == '\t' && FUNC4(buf[2])) {
			/* protocol spec */
			u = FUNC11(buf+2, &cp, 16);
			while (FUNC3(*cp))
				cp++;
			if (!*cp) {
				FUNC1("Invalid protocol spec at line %u",
				    linectr);
				continue;
			}
			if (lastclass != -1 && lastsubclass != -1) {
				if (FUNC7(cp, lastclass, lastsubclass,
						 u))
					FUNC1("Duplicate protocol spec at line %u class %02x:%02x:%02x %s",
					    linectr, lastclass, lastsubclass,
					    u, cp);
				FUNC0("line %5u protocol %02x:%02x:%02x %s",
				    linectr, lastclass, lastsubclass, u, cp);
				continue;
			}
			FUNC1("Protocol spec without prior Class and Subclass spec at line %u",
			    linectr);
			continue;
		}
		if (buf[0] == 'H' && buf[1] == 'I' &&
		    buf[2] == 'D' && /*isspace(buf[3])*/ buf[3] == ' ') {
			continue;
		}
		if (buf[0] == 'H' && buf[1] == 'U' &&
		    buf[2] == 'T' && /*isspace(buf[3])*/ buf[3] == ' ') {
			lastlang = lastclass = lastvendor = lastsubclass = -1;
			/*
			 * set 1 as pseudo-id to indicate that the parser is
			 * in a `HUT' section.
			 */
			lasthut = 1;
			continue;
		}
		if (buf[0] == 'R' && buf[1] == ' ')
			continue;

		if (buf[0] == 'V' && buf[1] == 'T')
			continue;

		FUNC1("Unknown line at line %u", linectr);
	}
}