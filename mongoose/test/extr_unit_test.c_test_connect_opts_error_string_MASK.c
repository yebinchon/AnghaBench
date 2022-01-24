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
struct mg_connect_opts {char const** error_string; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  cb6 ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connect_opts*,int /*<<< orphan*/ ,int) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char*,int /*<<< orphan*/ ,struct mg_connect_opts) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC6(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  struct mg_connect_opts opts;
  const char *error_string = NULL;

  FUNC2(&opts, 0, sizeof(opts));
  opts.error_string = &error_string;

  FUNC5(&mgr, NULL);
  FUNC0((nc = FUNC3(&mgr, "127.0.0.1:65537", cb6, opts)) == NULL);
  FUNC0(error_string != NULL);
  FUNC1(error_string, "cannot parse address");
  FUNC4(&mgr);
  return NULL;
}