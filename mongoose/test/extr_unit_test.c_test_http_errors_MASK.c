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
struct mg_mgr {int dummy; } ;
struct mg_connection {char* user_data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * enable_directory_listing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  c_str_ne ; 
 int /*<<< orphan*/  cb1 ; 
 int /*<<< orphan*/  cb8 ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int,int /*<<< orphan*/ ,char*,void*) ; 
 TYPE_1__ s_http_server_opts ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static const char *FUNC10(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *local_addr = "127.0.0.1:7777";
  char status[1000] = "";

  FUNC5(&mgr, NULL);
  s_http_server_opts.enable_directory_listing = NULL;
  FUNC0((nc = FUNC2(&mgr, local_addr, cb1)) != NULL);
  FUNC7(nc);

#if !defined(TEST_UNDER_VIRTUALBOX) && !defined(_WIN32)
  /* Test file which exists but cannot be opened */
  FUNC0((nc = FUNC3(&mgr, local_addr, cb8)) != NULL);
  FUNC7(nc);
  nc->user_data = status;
  FUNC9("touch test_unreadable; chmod 000 test_unreadable");
  FUNC6(nc, "GET /%s HTTP/1.0\n\n", "../test_unreadable");

  /* Run event loop. Use more cycles to let file download complete. */
  FUNC8(&mgr, 1, c_str_ne, status, (void *) "");
  FUNC9("rm -f test_unreadable");

  /* Check that it failed */
  FUNC1(status, "HTTP/1.1 403");
#endif

  /* Test non existing file */
  FUNC0((nc = FUNC3(&mgr, local_addr, cb8)) != NULL);
  FUNC7(nc);
  status[0] = '\0';
  nc->user_data = status;
  FUNC6(nc, "GET /%s HTTP/1.0\n\n", "/please_dont_create_this_file_srsly");

  FUNC8(&mgr, 1, c_str_ne, status, (void *) "");

  /* Check that it failed */
  FUNC1(status, "HTTP/1.1 404");

  /* Cleanup */
  FUNC4(&mgr);

  return NULL;
}