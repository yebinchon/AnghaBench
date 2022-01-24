#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  errStr; } ;
typedef  TYPE_1__ tjinstance ;
typedef  int /*<<< orphan*/ * tjhandle ;

/* Variables and functions */
 int /*<<< orphan*/  JMSG_LENGTH_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  errStr ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

tjhandle FUNC5(void)
{
  tjinstance *this = NULL;
  tjhandle handle = NULL;

  if ((this = (tjinstance *)FUNC3(sizeof(tjinstance))) == NULL) {
		FUNC4(errStr, JMSG_LENGTH_MAX,
			"tjInitTransform(): Memory allocation failure");
		return NULL;
	}
	FUNC0(this, sizeof(tjinstance));
  FUNC4(this->errStr, JMSG_LENGTH_MAX, "No error");
	handle=FUNC1(this);
	if(!handle) return NULL;
	handle=FUNC2(this);
	return handle;
}