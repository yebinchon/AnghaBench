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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_4__ {char* (* cmdstrf ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  core; } ;
struct TYPE_5__ {TYPE_1__ coreb; } ;
typedef  TYPE_2__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ut64 FUNC6(RAnal *anal, const ut8 *data, int len) {
	ut32 fcn_id;

	if (!FUNC4 (&data[1], &data[len - 1], &fcn_id)) {
		return UT64_MAX;
	}
	FUNC2 ();
	// 0xfff.. are bad addresses for wasm
	// cgvwzq: 0xfff... can be external imported JS funcs
	char *s = anal->coreb.cmdstrf (anal->coreb.core, "is~FUNC[2:%u]", fcn_id);
	FUNC1 ();
	if (s) {
		ut64 n = FUNC3 (NULL, s);
		FUNC0 (s);
		return n;
	}
	return UT64_MAX;
}