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
typedef  int /*<<< orphan*/  phar_entry_info ;
typedef  int /*<<< orphan*/  phar_archive_data ;

/* Variables and functions */
 int /*<<< orphan*/  PHAR_MIME_PHP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SAPI_HEADER_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,size_t,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(phar_archive_data *phar, char *fname, size_t fname_len, char *f404, size_t f404_len, char *entry, size_t entry_len) /* {{{ */
{
	sapi_header_line ctr = {0};
	phar_entry_info	*info;

	if (phar && f404_len) {
		info = FUNC2(phar, f404, f404_len, NULL, 1);

		if (info) {
			FUNC1(phar, info, "text/html", PHAR_MIME_PHP, f404, f404_len, fname, NULL, NULL, 0);
			return;
		}
	}

	ctr.response_code = 404;
	ctr.line_len = sizeof("HTTP/1.0 404 Not Found")-1;
	ctr.line = "HTTP/1.0 404 Not Found";
	FUNC3(SAPI_HEADER_REPLACE, &ctr);
	FUNC4();
	FUNC0("<html>\n <head>\n  <title>File Not Found</title>\n </head>\n <body>\n  <h1>404 - File ", sizeof("<html>\n <head>\n  <title>File Not Found</title>\n </head>\n <body>\n  <h1>404 - File ") - 1);
	FUNC0("Not Found</h1>\n </body>\n</html>",  sizeof("Not Found</h1>\n </body>\n</html>") - 1);
}