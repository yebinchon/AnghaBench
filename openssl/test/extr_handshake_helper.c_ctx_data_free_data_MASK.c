#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * session_ticket_app_data; int /*<<< orphan*/ * srp_password; int /*<<< orphan*/ * srp_user; int /*<<< orphan*/ * alpn_protocols; int /*<<< orphan*/ * npn_protocols; } ;
typedef  TYPE_1__ CTX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(CTX_DATA *ctx_data)
{
    FUNC0(ctx_data->npn_protocols);
    ctx_data->npn_protocols = NULL;
    FUNC0(ctx_data->alpn_protocols);
    ctx_data->alpn_protocols = NULL;
    FUNC0(ctx_data->srp_user);
    ctx_data->srp_user = NULL;
    FUNC0(ctx_data->srp_password);
    ctx_data->srp_password = NULL;
    FUNC0(ctx_data->session_ticket_app_data);
    ctx_data->session_ticket_app_data = NULL;
}