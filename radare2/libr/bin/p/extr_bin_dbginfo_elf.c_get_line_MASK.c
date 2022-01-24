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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_3__ {scalar_t__ sdb_addrinfo; } ;
typedef  TYPE_1__ RBinFile ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(RBinFile *bf, ut64 addr, char *file, int len, int *line) {
	if (bf->sdb_addrinfo) {
		char offset[64];
		char *offset_ptr = FUNC2 (addr, offset, 16);
		char *ret = FUNC1 (bf->sdb_addrinfo, offset_ptr, 0);
		if (ret) {
			char *p = FUNC3 (ret, '|');
			if (p) {
				*p = '\0';
				FUNC4 (file, ret, len);
				*line = FUNC0 (p + 1);
				return true;
			}
		}
	}
	return false;
}