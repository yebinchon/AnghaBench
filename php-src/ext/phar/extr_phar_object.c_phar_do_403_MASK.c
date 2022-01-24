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
struct TYPE_3__ {int response_code; int line_len; char* line; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ sapi_header_line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SAPI_HEADER_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(char *entry, size_t entry_len) /* {{{ */
{
	sapi_header_line ctr = {0};

	ctr.response_code = 403;
	ctr.line_len = sizeof("HTTP/1.0 403 Access Denied")-1;
	ctr.line = "HTTP/1.0 403 Access Denied";
	FUNC1(SAPI_HEADER_REPLACE, &ctr);
	FUNC2();
	FUNC0("<html>\n <head>\n  <title>Access Denied</title>\n </head>\n <body>\n  <h1>403 - File ", sizeof("<html>\n <head>\n  <title>Access Denied</title>\n </head>\n <body>\n  <h1>403 - File ") - 1);
	FUNC0("Access Denied</h1>\n </body>\n</html>", sizeof("Access Denied</h1>\n </body>\n</html>") - 1);
}