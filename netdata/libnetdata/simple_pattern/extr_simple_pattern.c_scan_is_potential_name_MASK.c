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
struct simple_pattern {char* match; scalar_t__ mode; struct simple_pattern* child; } ;

/* Variables and functions */
 scalar_t__ SIMPLE_PATTERN_EXACT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void FUNC1(struct simple_pattern *p, int *alpha, int *colon, int *wildcards)
{
    while (p) {
        if (p->match) {
            if(p->mode == SIMPLE_PATTERN_EXACT && !FUNC0("localhost", p->match)) {
                p = p->child;
                continue;
            }
            char const *scan = p->match;
            while (*scan != 0) {
                if ((*scan >= 'a' && *scan <= 'z') || (*scan >= 'A' && *scan <= 'Z'))
                    *alpha = 1;
                if (*scan == ':')
                    *colon = 1;
                scan++;
            }
            if (p->mode != SIMPLE_PATTERN_EXACT)
                *wildcards = 1;
            p = p->child;
        }
    }
}