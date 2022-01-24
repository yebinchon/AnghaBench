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
struct section {int dummy; } ;
struct config_option {int dummy; } ;
struct config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONFIG ; 
 struct config_option* FUNC0 (struct section*,char const*,int /*<<< orphan*/ ) ; 
 struct section* FUNC1 (struct config*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 

int FUNC3(struct config *root, const char *section, const char *name) {
    struct config_option *cv;

    FUNC2(D_CONFIG, "request to get config in section '%s', name '%s'", section, name);

    struct section *co = FUNC1(root, section);
    if(!co) return 0;

    cv = FUNC0(co, name, 0);
    if(!cv) return 0;

    return 1;
}