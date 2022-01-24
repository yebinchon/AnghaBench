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
typedef  int /*<<< orphan*/  str3 ;
typedef  int /*<<< orphan*/  str2 ;
typedef  int /*<<< orphan*/  str1 ;
struct TYPE_3__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  minor_code; int /*<<< orphan*/  request_code; int /*<<< orphan*/  error_code; } ;
typedef  TYPE_1__ XErrorEvent ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(Display *display, XErrorEvent *error)
{
	char str1[512];
	char str2[512];
	char str3[512];
	FUNC0(display, error->error_code, str1, sizeof(str1));
	FUNC0(display, error->request_code, str2, sizeof(str2));
	FUNC0(display, error->minor_code, str3, sizeof(str3));

	FUNC1(LOG_ERROR,
	     "X Error: %s, Major opcode: %s, "
	     "Minor opcode: %s, Serial: %lu",
	     str1, str2, str3, error->serial);
	return 0;
}