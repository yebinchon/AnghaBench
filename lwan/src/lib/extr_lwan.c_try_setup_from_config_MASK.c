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
struct lwan_config {int /*<<< orphan*/  config_file_path; } ;
struct TYPE_2__ {int request_flags; scalar_t__ allow_cors; scalar_t__ proxy_protocol; } ;
struct lwan {TYPE_1__ config; } ;

/* Variables and functions */
 int REQUEST_ALLOW_CORS ; 
 int REQUEST_ALLOW_PROXY_REQS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct lwan *l,
                                  const struct lwan_config *config)
{
    if (!FUNC2(l, config->config_file_path)) {
        if (config->config_file_path) {
            FUNC0("Could not read config file: %s",
                                 config->config_file_path);
        }
    }

    FUNC1(l); /* `quiet` key might have changed value. */

    l->config.request_flags =
        (l->config.proxy_protocol ? REQUEST_ALLOW_PROXY_REQS : 0) |
        (l->config.allow_cors ? REQUEST_ALLOW_CORS : 0);
}