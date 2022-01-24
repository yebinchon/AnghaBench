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
struct TYPE_4__ {struct TYPE_4__* cipher; int /*<<< orphan*/  client_ca_names; int /*<<< orphan*/  server_ca_names; struct TYPE_4__* result_session_ticket_app_data; struct TYPE_4__* server_alpn_negotiated; struct TYPE_4__* client_alpn_negotiated; struct TYPE_4__* server_npn_negotiated; struct TYPE_4__* client_npn_negotiated; } ;
typedef  TYPE_1__ HANDSHAKE_RESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  X509_NAME_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(HANDSHAKE_RESULT *result)
{
    if (result == NULL)
        return;
    FUNC0(result->client_npn_negotiated);
    FUNC0(result->server_npn_negotiated);
    FUNC0(result->client_alpn_negotiated);
    FUNC0(result->server_alpn_negotiated);
    FUNC0(result->result_session_ticket_app_data);
    FUNC1(result->server_ca_names, X509_NAME_free);
    FUNC1(result->client_ca_names, X509_NAME_free);
    FUNC0(result->cipher);
    FUNC0(result);
}