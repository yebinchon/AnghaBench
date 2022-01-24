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
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(smart_str *buffer, int protocol_version, int response_code, int persistent) /* {{{ */
{
	if (!response_code) {
		response_code = 200;
	}
	FUNC3(buffer, "HTTP", 4, persistent);
	FUNC2(buffer, '/', persistent);
	FUNC1(buffer, protocol_version / 100, persistent);
	FUNC2(buffer, '.', persistent);
	FUNC1(buffer, protocol_version % 100, persistent);
	FUNC2(buffer, ' ', persistent);
	FUNC1(buffer, response_code, persistent);
	FUNC2(buffer, ' ', persistent);
	FUNC4(buffer, FUNC0(response_code), persistent);
	FUNC3(buffer, "\r\n", 2, persistent);
}