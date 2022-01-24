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
struct TYPE_4__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ request_rec ;

/* Variables and functions */
 int /*<<< orphan*/  APLOG_ERR ; 
 int /*<<< orphan*/  APLOG_MARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(char *msg, request_rec *r)
{
	if (r) {
		FUNC0(APLOG_MARK, APLOG_ERR, 0, r, msg, r->filename);
	} else {
		FUNC1(msg, -1);
	}
}