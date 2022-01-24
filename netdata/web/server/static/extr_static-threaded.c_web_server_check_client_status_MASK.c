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
struct web_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct web_client*) ; 

__attribute__((used)) static inline int FUNC4(struct web_client *w) {
    if(FUNC0(FUNC1(w) || (!FUNC2(w) && !FUNC3(w))))
        return -1;

    return 0;
}