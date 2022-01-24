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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static char *FUNC7(int mode, const char *chksum, ut8 *data, ut32 datalen) {
	char *chkstr = NULL, *aux, *ret = NULL;
	const char *ptr = chksum;
	char tmp[128];
	int i;
	do {
		for (i = 0; *ptr && *ptr != ',' && i < sizeof (tmp) -1; i++) {
			tmp[i] = *ptr++;
		}
		tmp[i] = '\0';
		FUNC6 (tmp);
		chkstr = FUNC3 (NULL, tmp, data, datalen);
		if (!chkstr) {
			if (*ptr && *ptr == ',') {
				ptr++;
			}
			continue;
		}
		if (FUNC1 (mode)) {
			aux = FUNC5 ("%s ", chkstr);
		} else if (FUNC0 (mode)) {
			aux = FUNC5 ("\"%s\":\"%s\",", tmp, chkstr);
		} else {
			aux = FUNC5 ("%s=%s ", tmp, chkstr);
		}
		ret = FUNC4 (ret, aux);
		FUNC2 (chkstr);
		FUNC2 (aux);
		if (*ptr && *ptr == ',') {
			ptr++;
		}
	} while (*ptr);

	return ret;
}