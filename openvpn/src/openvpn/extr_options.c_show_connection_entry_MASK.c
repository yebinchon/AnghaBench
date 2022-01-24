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
struct connection_entry {int /*<<< orphan*/  key_direction; scalar_t__ http_proxy_options; int /*<<< orphan*/  af; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_SHOW_PARMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bind_defined ; 
 int /*<<< orphan*/  bind_ipv6_only ; 
 int /*<<< orphan*/  bind_local ; 
 int /*<<< orphan*/  connect_retry_seconds ; 
 int /*<<< orphan*/  connect_timeout ; 
 int /*<<< orphan*/  explicit_exit_notification ; 
 int /*<<< orphan*/  fragment ; 
 int /*<<< orphan*/  key_direction ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  link_mtu ; 
 int /*<<< orphan*/  link_mtu_defined ; 
 int /*<<< orphan*/  local ; 
 int /*<<< orphan*/  local_port ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mssfix ; 
 int /*<<< orphan*/  mtu_discover_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  remote ; 
 int /*<<< orphan*/  remote_float ; 
 int /*<<< orphan*/  remote_port ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  socks_proxy_port ; 
 int /*<<< orphan*/  socks_proxy_server ; 
 int /*<<< orphan*/  tls_auth_file ; 
 int /*<<< orphan*/  tls_crypt_file ; 
 int /*<<< orphan*/  tls_crypt_v2_file ; 
 int /*<<< orphan*/  tun_mtu ; 
 int /*<<< orphan*/  tun_mtu_defined ; 
 int /*<<< orphan*/  tun_mtu_extra ; 
 int /*<<< orphan*/  tun_mtu_extra_defined ; 

__attribute__((used)) static void
FUNC8(const struct connection_entry *o)
{
    FUNC5(D_SHOW_PARMS, "  proto = %s", FUNC6(o->proto, o->af, false));
    FUNC3(local);
    FUNC3(local_port);
    FUNC3(remote);
    FUNC3(remote_port);
    FUNC0(remote_float);
    FUNC0(bind_defined);
    FUNC0(bind_local);
    FUNC0(bind_ipv6_only);
    FUNC1(connect_retry_seconds);
    FUNC1(connect_timeout);

    if (o->http_proxy_options)
    {
        FUNC7(o->http_proxy_options);
    }
    FUNC3(socks_proxy_server);
    FUNC3(socks_proxy_port);
    FUNC1(tun_mtu);
    FUNC0(tun_mtu_defined);
    FUNC1(link_mtu);
    FUNC0(link_mtu_defined);
    FUNC1(tun_mtu_extra);
    FUNC0(tun_mtu_extra_defined);

    FUNC1(mtu_discover_type);

#ifdef ENABLE_FRAGMENT
    SHOW_INT(fragment);
#endif
    FUNC1(mssfix);

#ifdef ENABLE_OCC
    SHOW_INT(explicit_exit_notification);
#endif

    FUNC3(tls_auth_file);
    FUNC2(key_direction, FUNC4(o->key_direction, false, true),
              "%s");
    FUNC3(tls_crypt_file);
    FUNC3(tls_crypt_v2_file);
}