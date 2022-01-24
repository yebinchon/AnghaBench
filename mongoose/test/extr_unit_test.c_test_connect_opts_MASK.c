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
struct mg_connection {void* user_data; int flags; } ;
struct mg_connect_opts {int flags; void* user_data; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MG_F_USER_6 ; 
 int MG_F_WANT_READ ; 
 int /*<<< orphan*/  cb6 ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connect_opts*,int /*<<< orphan*/ ,int) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ,struct mg_connect_opts) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC5(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  struct mg_connect_opts opts;

  FUNC1(&opts, 0, sizeof(opts));
  opts.user_data = (void *) 0xdeadbeef;
  opts.flags = MG_F_USER_6;
  opts.flags |= MG_F_WANT_READ; /* Should not be allowed. */

  FUNC4(&mgr, NULL);
  FUNC0((nc = FUNC2(&mgr, "127.0.0.1:33211", cb6, opts)) != NULL);
  FUNC0(nc->user_data == (void *) 0xdeadbeef);
  FUNC0(nc->flags & MG_F_USER_6);
  FUNC0(!(nc->flags & MG_F_WANT_READ));
  /* TODO(rojer): find a way to test this w/o touching nc (already freed).
    poll_mgr(&mgr, 25);
    ASSERT(nc->flags & MG_F_USER_4);
    ASSERT(nc->flags & MG_F_USER_6);
    ASSERT(!(nc->flags & MG_F_WANT_READ));
  */
  FUNC3(&mgr);
  return NULL;
}