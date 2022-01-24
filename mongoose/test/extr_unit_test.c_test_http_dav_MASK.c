#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cs_stat_t ;
struct TYPE_2__ {char* enable_directory_listing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FETCH_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__ s_http_server_opts ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 

__attribute__((used)) static const char *FUNC9(void) {
  char buf[FETCH_BUF_SIZE];
  cs_stat_t st;

  FUNC5("./data/dav/b.txt");
  FUNC6("./data/dav/d");

  /* Test PROPFIND  */
  s_http_server_opts.enable_directory_listing = "yes";
  FUNC3(buf, "%s", "PROPFIND / HTTP/1.0\n\n");
  FUNC2(buf, "HTTP/1.1 207");
  FUNC0(FUNC8(buf, "a.txt") != NULL);
  FUNC0(FUNC8(buf, "hidden_file.txt") == NULL);

  /* Test MKCOL */
  FUNC3(buf, "%s", "MKCOL /d HTTP/1.0\nContent-Length:5\n\n12345");
  FUNC2(buf, "HTTP/1.1 415");
  FUNC3(buf, "%s", "MKCOL /d HTTP/1.0\n\n");
  FUNC2(buf, "HTTP/1.1 201");
  FUNC3(buf, "%s", "MKCOL /d HTTP/1.0\n\n");
  FUNC2(buf, "HTTP/1.1 405");
  FUNC3(buf, "%s", "MKCOL /x/d HTTP/1.0\n\n");
  FUNC2(buf, "HTTP/1.1 409");

  /* Test PUT */
  FUNC3(buf, "%s", "PUT /b.txt HTTP/1.0\nContent-Length: 5\n\n12345");
  FUNC2(buf, "HTTP/1.1 201");
  FUNC3(buf, "%s", "GET /data/dav/b.txt HTTP/1.0\n\n");
  FUNC2(buf, "HTTP/1.1 200");
  FUNC0(FUNC8(buf, "Content-Length: 5\r\n") != 0);
  FUNC1(buf + FUNC7(buf) - 7, "\r\n12345");

  /* Test DELETE */
  FUNC3(buf, "%s", "DELETE /b.txt HTTP/1.0\n\n");
  FUNC2(buf, "HTTP/1.1 204");
  FUNC0(FUNC4("./data/dav/b.txt", &st) != 0);
  FUNC3(buf, "%s", "DELETE /d HTTP/1.0\n\n");
  FUNC0(FUNC4("./data/dav/d", &st) != 0);

  /* Non-existing file */
  FUNC3(buf, "%s", "PROPFIND /__blah.txt HTTP/1.0\n\n");
  FUNC2(buf, "HTTP/1.1 404");

  return NULL;
}