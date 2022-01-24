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
struct http_proxy_options {TYPE_1__* custom_headers; } ;
struct TYPE_2__ {scalar_t__ name; scalar_t__ content; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_SHOW_PARMS ; 
 int MAX_CUSTOM_HTTP_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auth_file ; 
 int /*<<< orphan*/  auth_method_string ; 
 int /*<<< orphan*/  http_version ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  user_agent ; 

__attribute__((used)) static void
FUNC2(const struct http_proxy_options *o)
{
    int i;
    FUNC1(D_SHOW_PARMS, "BEGIN http_proxy");
    FUNC0(server);
    FUNC0(port);
    FUNC0(auth_method_string);
    FUNC0(auth_file);
    FUNC0(http_version);
    FUNC0(user_agent);
    for  (i = 0; i < MAX_CUSTOM_HTTP_HEADER && o->custom_headers[i].name; i++)
    {
        if (o->custom_headers[i].content)
        {
            FUNC1(D_SHOW_PARMS, "  custom_header[%d] = %s: %s", i,
                o->custom_headers[i].name, o->custom_headers[i].content);
        }
        else
        {
            FUNC1(D_SHOW_PARMS, "  custom_header[%d] = %s", i,
                o->custom_headers[i].name);
        }
    }
    FUNC1(D_SHOW_PARMS, "END http_proxy");
}