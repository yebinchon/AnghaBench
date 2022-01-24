#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* next_char; char* start; scalar_t__ end; char right; int offset_limit; scalar_t__ monospace; scalar_t__ offset; } ;
typedef  TYPE_1__ scrolling_string_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(scrolling_string_iterator_t *iter) {
    iter->next_char = iter->start;
    iter->offset = 0;
    if (iter->start < iter->end) {
        iter->right = *iter->next_char;
        if (iter->monospace) {
            iter->offset_limit = 5;
        } else {
            iter->offset_limit = FUNC1(FUNC0(iter->right)) + 1;
        }
    } else {
        iter->right = ' ';
        iter->offset_limit = 5;
    }
}