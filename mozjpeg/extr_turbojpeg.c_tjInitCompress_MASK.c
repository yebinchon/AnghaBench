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
struct TYPE_4__ {int /*<<< orphan*/  errStr; } ;
typedef  TYPE_1__ tjinstance ;
typedef  int /*<<< orphan*/ * tjhandle ;

/* Variables and functions */
 int /*<<< orphan*/  JMSG_LENGTH_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  errStr ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

tjhandle FUNC4(void)
{
	tjinstance *this=NULL;

  if ((this = (tjinstance *)FUNC2(sizeof(tjinstance))) == NULL) {
		FUNC3(errStr, JMSG_LENGTH_MAX,
			"tjInitCompress(): Memory allocation failure");
		return NULL;
	}
	FUNC0(this, sizeof(tjinstance));
  FUNC3(this->errStr, JMSG_LENGTH_MAX, "No error");
	return FUNC1(this);
}