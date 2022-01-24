#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_4__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 TYPE_2__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(char *buf, int size, int rwflag, void *userdata)
{
    ngx_str_t *pwd = userdata;

    if (rwflag) {
        FUNC0(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "ngx_ssl_password_callback() is called for encryption");
        return 0;
    }

    if (pwd == NULL) {
        return 0;
    }

    if (pwd->len > (size_t) size) {
        FUNC0(NGX_LOG_ERR, ngx_cycle->log, 0,
                      "password is truncated to %d bytes", size);
    } else {
        size = pwd->len;
    }

    FUNC1(buf, pwd->data, size);

    return size;
}