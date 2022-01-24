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
struct simple_pattern {scalar_t__ mode; struct simple_pattern* next; int /*<<< orphan*/ * match; } ;
typedef  int /*<<< orphan*/  SIMPLE_PATTERN ;

/* Variables and functions */
 scalar_t__ SIMPLE_PATTERN_EXACT ; 
 int /*<<< orphan*/  FUNC0 (struct simple_pattern*,int*,int*,int*) ; 

extern int FUNC1(SIMPLE_PATTERN *p)
{
    int alpha=0, colon=0, wildcards=0;
    struct simple_pattern *root = (struct simple_pattern*)p;
    while (root != NULL) {
        if (root->match != NULL) {
            FUNC0(root, &alpha, &colon, &wildcards);
        }
        if (root->mode != SIMPLE_PATTERN_EXACT)
            wildcards = 1;
        root = root->next;
    }
    return (alpha || wildcards) && !colon;
}