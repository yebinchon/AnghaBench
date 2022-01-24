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
struct mg_connection {char* user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  c_str_ne ; 
 int /*<<< orphan*/  cb3 ; 
 int /*<<< orphan*/  cb4 ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*,int,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static const char *FUNC8(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *urls[] = {"ws://127.0.0.1:7778/ws", "http://127.0.0.1:7778/ws",
                        "127.0.0.1:7778/ws", NULL};
  const char **url;

  FUNC5(&mgr, NULL);
  /* mgr.hexdump_file = "-"; */
  FUNC0((nc = FUNC2(&mgr, "127.0.0.1:7778", cb3)) != NULL);
  FUNC6(nc);

  for (url = urls; *url != NULL; url++) {
    char buf[20] = "";
    FUNC0((nc = FUNC3(&mgr, cb4, "ws://127.0.0.1:7778/ws", NULL,
                               NULL)) != NULL);
    nc->user_data = buf;
    FUNC7(&mgr, 1, c_str_ne, buf, (void *) "");
    FUNC1(buf, "A");
  }

  FUNC4(&mgr);

  return NULL;
}