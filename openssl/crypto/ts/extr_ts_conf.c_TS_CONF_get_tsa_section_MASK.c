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
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  BASE_SECTION ; 
 int /*<<< orphan*/  ENV_DEFAULT_TSA ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *FUNC2(CONF *conf, const char *section)
{
    if (!section) {
        section = FUNC0(conf, BASE_SECTION, ENV_DEFAULT_TSA);
        if (!section)
            FUNC1(BASE_SECTION, ENV_DEFAULT_TSA);
    }
    return section;
}