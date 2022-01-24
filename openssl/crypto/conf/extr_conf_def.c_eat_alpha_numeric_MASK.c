#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ flag_dollarid; } ;
typedef  TYPE_1__ CONF ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char) ; 
 char* FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static char *FUNC4(CONF *conf, char *p)
{
    for (;;) {
        if (FUNC2(conf, *p)) {
            p = FUNC3(conf, p);
            continue;
        }
        if (!(FUNC0(conf, *p)
              || (conf->flag_dollarid && FUNC1(conf, *p))))
            return p;
        p++;
    }
}