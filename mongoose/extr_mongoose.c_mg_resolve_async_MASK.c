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
struct mg_resolve_async_opts {int dummy; } ;
struct mg_mgr {int dummy; } ;
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  mg_resolve_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_resolve_async_opts*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mg_mgr*,char const*,int,int /*<<< orphan*/ ,void*,struct mg_resolve_async_opts) ; 

int FUNC2(struct mg_mgr *mgr, const char *name, int query,
                     mg_resolve_callback_t cb, void *data) {
  struct mg_resolve_async_opts opts;
  FUNC0(&opts, 0, sizeof(opts));
  return FUNC1(mgr, name, query, cb, data, opts);
}