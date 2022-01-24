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
struct lwan_response_settings {int code; } ;
struct hash {int dummy; } ;
typedef  enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;

/* Variables and functions */
 char* FUNC0 (struct hash const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 void* FUNC3 (char const*,struct lwan_response_settings*) ; 

__attribute__((used)) static void *FUNC4(const char *prefix,
                                       const struct hash *hash)
{
    const char *code = FUNC0(hash, "code");

    if (!code) {
        FUNC1("`code` not supplied");
        return NULL;
    }

    struct lwan_response_settings settings = {
        .code = (enum lwan_http_status)FUNC2(code, 999)
    };

    if (settings.code == 999) {
        FUNC1("Unknown error code: %s", code);
        return NULL;
    }

    return FUNC3(prefix, &settings);
}