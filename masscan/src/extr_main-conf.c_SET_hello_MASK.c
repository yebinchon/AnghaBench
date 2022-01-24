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
struct Masscan {int is_hello_ssl; int is_hello_smbv1; int is_hello_http; scalar_t__ echo; } ;

/* Variables and functions */
 int CONF_ERR ; 
 int CONF_OK ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(struct Masscan *masscan, const char *name, const char *value)
{
    FUNC1(name);
    if (masscan->echo) {
        if (masscan->is_hello_ssl) {
            FUNC2(masscan->echo, "hello = ssl\n");
        } else if (masscan->is_hello_smbv1) {
            FUNC2(masscan->echo, "hello = smbv1\n");
        } else if (masscan->is_hello_http) {
            FUNC2(masscan->echo, "hello = http\n");
        }
        return 0;
    }
    if (FUNC0("ssl", value))
        masscan->is_hello_ssl = 1;
    else if (FUNC0("smbv1", value))
        masscan->is_hello_smbv1 = 1;
    else if (FUNC0("http", value))
        masscan->is_hello_http = 1;
    else {
        FUNC2(stderr, "FAIL: %s: unknown hello type\n", value);
        return CONF_ERR;
    }
    return CONF_OK;
}