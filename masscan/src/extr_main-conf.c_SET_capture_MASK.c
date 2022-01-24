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
struct Masscan {int is_capture_cert; int is_capture_html; int is_capture_heartbleed; int is_capture_ticketbleed; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_ERR ; 
 int CONF_OK ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char const*) ; 
 scalar_t__ stderr ; 

__attribute__((used)) static int FUNC2(struct Masscan *masscan, const char *name, const char *value)
{
    if (masscan->echo) {
        if (!masscan->is_capture_cert || masscan->echo_all)
            FUNC1(masscan->echo, "%scapture = cert\n", masscan->is_capture_cert?"":"no");
        if (masscan->is_capture_html || masscan->echo_all)
            FUNC1(masscan->echo, "%scapture = html\n", masscan->is_capture_html?"":"no");
        if (masscan->is_capture_heartbleed || masscan->echo_all)
            FUNC1(masscan->echo, "%scapture = heartbleed\n", masscan->is_capture_heartbleed?"":"no");
        if (masscan->is_capture_ticketbleed || masscan->echo_all)
            FUNC1(masscan->echo, "%scapture = ticketbleed\n", masscan->is_capture_ticketbleed?"":"no");
        return 0;
    }
    if (FUNC0("capture", name)) {
        if (FUNC0("cert", value))
            masscan->is_capture_cert = 1;
        else if (FUNC0("html", value))
            masscan->is_capture_html = 1;
        else if (FUNC0("heartbleed", value))
            masscan->is_capture_heartbleed = 1;
        else if (FUNC0("ticketbleed", value))
            masscan->is_capture_ticketbleed = 1;
        else {
            FUNC1(stderr, "FAIL: %s: unknown capture type\n", value);
            return CONF_ERR;
        }
    } else if (FUNC0("nocapture", name)) {
        if (FUNC0("cert", value))
            masscan->is_capture_cert = 0;
        else if (FUNC0("html", value))
            masscan->is_capture_html = 0;
        else if (FUNC0("heartbleed", value))
            masscan->is_capture_heartbleed = 0;
        else if (FUNC0("ticketbleed", value))
            masscan->is_capture_ticketbleed = 0;
        else {
            FUNC1(stderr, "FAIL: %s: unknown nocapture type\n", value);
            return CONF_ERR;
        }
    }
    return CONF_OK;
}