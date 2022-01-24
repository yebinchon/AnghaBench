#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* session_ticket_app_data; } ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ CTX_DATA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(SSL *s, void *arg)
{
    CTX_DATA *server_ctx_data = arg;
    SSL_SESSION *ss = FUNC1(s);
    char *app_data = server_ctx_data->session_ticket_app_data;

    if (ss == NULL || app_data == NULL)
        return 0;

    return FUNC0(ss, app_data, FUNC2(app_data));
}