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
struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC3 (struct mg_bind_opts*,int,int) ; 
 struct mg_connection* FUNC4 (struct mg_mgr*,char*,int /*<<< orphan*/ ,struct mg_bind_opts) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC10(void) {
  FUNC2(stdout);

  FUNC0();

  {
    struct mg_mgr mgr;

    FUNC6(&mgr, NULL);  // Initialize event manager object

    // Note that many connections can be added to a single event manager
    // Connections can be created at any point, e.g. in event handler function
    const char *err;
    struct mg_bind_opts opts;
    struct mg_connection *nc = NULL;
    FUNC3(&opts, 0x00, sizeof(opts));
    opts.error_string = &err;
    nc = FUNC4(
        &mgr, "80", ev_handler,
        opts);  // Create listening connection and add it to the event manager
    if (nc == NULL) {
      FUNC9("Failed to create listener: %s\n", err);
      return 1;
    }
    FUNC8(nc);

    for (;;) {  // Start infinite event loop
      FUNC1();
      FUNC7(&mgr, 0);
    }

    FUNC5(&mgr);
    return 0;
  }
}