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
struct mg_resolve_async_opts {char* nameserver; int timeout; int max_retries; } ;
struct mg_mgr {int dummy; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  MG_DNS_A_RECORD ; 
 int /*<<< orphan*/  c_int_eq ; 
 int /*<<< orphan*/  dns_resolve_timeout_cb ; 
 int /*<<< orphan*/  FUNC1 (struct mg_resolve_async_opts*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct mg_resolve_async_opts) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int,int /*<<< orphan*/ ,int*,void*) ; 

__attribute__((used)) static const char *FUNC6(void) {
  struct mg_mgr mgr;
  struct mg_resolve_async_opts opts;
  int data = 0;
  FUNC3(&mgr, NULL);
  FUNC1(&opts, 0, sizeof(opts));

  opts.nameserver = "7.7.7.7";
  opts.timeout = -1; /* 0 would be the default timeout */
  opts.max_retries = 1;
  FUNC4(&mgr, "www.cesanta.com", MG_DNS_A_RECORD,
                       dns_resolve_timeout_cb, &data, opts);

  FUNC5(&mgr, 5, c_int_eq, &data, (void *) 1);
  FUNC0(data, 1);

  FUNC2(&mgr);
  return NULL;
}