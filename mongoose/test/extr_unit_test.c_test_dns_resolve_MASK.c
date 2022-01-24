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
struct mg_mgr_init_opts {char* nameserver; } ;
struct mg_mgr {int dummy; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  MG_DNS_A_RECORD ; 
 int /*<<< orphan*/  c_int_ne ; 
 int /*<<< orphan*/  dns_resolve_cb ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr_init_opts*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *,struct mg_mgr_init_opts) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_mgr*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*,int,int /*<<< orphan*/ ,int*,void*) ; 

__attribute__((used)) static const char *FUNC8(void) {
  struct mg_mgr mgr;
  struct mg_mgr_init_opts opts;

  int data = 0;

  FUNC3(&mgr, NULL);

  /* Microsoft promises dns.msftncsi.com is always 131.107.255.255 */
  FUNC5(&mgr, "dns.msftncsi.com", MG_DNS_A_RECORD, dns_resolve_cb,
                   &data);

  FUNC7(&mgr, 1, c_int_ne, &data, (void *) 0);
  FUNC0(data, 1);

  FUNC2(&mgr);

  data = 0;
  FUNC1(&opts, 0, sizeof(opts));
  opts.nameserver = "8.8.4.4";
  FUNC4(&mgr, NULL, opts);

  /* Microsoft promises dns.msftncsi.com is always 131.107.255.255 */
  FUNC5(&mgr, "dns.msftncsi.com", MG_DNS_A_RECORD, dns_resolve_cb,
                   &data);

  FUNC7(&mgr, 1, c_int_ne, &data, (void *) 0);
  FUNC0(data, 1);

  FUNC2(&mgr);

  data = 0;
  FUNC3(&mgr, NULL);
  FUNC6(&mgr, "8.8.4.4");

  /* Microsoft promises dns.msftncsi.com is always 131.107.255.255 */
  FUNC5(&mgr, "dns.msftncsi.com", MG_DNS_A_RECORD, dns_resolve_cb,
                   &data);

  FUNC7(&mgr, 1, c_int_ne, &data, (void *) 0);
  FUNC0(data, 1);

  FUNC2(&mgr);

  return NULL;
}