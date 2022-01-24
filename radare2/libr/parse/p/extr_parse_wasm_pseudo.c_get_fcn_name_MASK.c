#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_4__ {char* (* cmdstrf ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  core; } ;
struct TYPE_5__ {TYPE_1__ coreb; } ;
typedef  TYPE_2__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char* FUNC4(RAnal *anal, ut32 fcn_id) {
	FUNC1 ();
	char *s = anal->coreb.cmdstrf (anal->coreb.core, "is~FUNC[6:%u]", fcn_id);
	FUNC0 ();
	if (s) {
		size_t namelen = FUNC2 (s);
		s[namelen - 1] = 0;
	}
	return s;
}