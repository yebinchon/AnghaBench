#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cert_status; int /*<<< orphan*/  session_ticket_app_data; int /*<<< orphan*/  broken_session_ticket; int /*<<< orphan*/  alpn_protocols; int /*<<< orphan*/  npn_protocols; int /*<<< orphan*/  servername_callback; } ;
typedef  TYPE_1__ SSL_TEST_SERVER_CONF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(SSL_TEST_SERVER_CONF *serv,
                         SSL_TEST_SERVER_CONF *serv2)
{
    if (!FUNC0(serv->servername_callback, serv2->servername_callback)
            || !FUNC1(serv->npn_protocols, serv2->npn_protocols)
            || !FUNC1(serv->alpn_protocols, serv2->alpn_protocols)
            || !FUNC0(serv->broken_session_ticket,
                            serv2->broken_session_ticket)
            || !FUNC1(serv->session_ticket_app_data,
                            serv2->session_ticket_app_data)
            || !FUNC0(serv->cert_status, serv2->cert_status))
        return 0;
    return 1;
}