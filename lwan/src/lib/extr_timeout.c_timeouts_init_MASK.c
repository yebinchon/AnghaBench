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
struct timeouts {scalar_t__ curtime; scalar_t__* pending; scalar_t__ expired; scalar_t__** wheel; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

__attribute__((used)) static struct timeouts *FUNC2(struct timeouts *T)
{
    unsigned i, j;

    for (i = 0; i < FUNC0(*T->wheel); i++) {
        for (j = 0; j < FUNC0(T->wheel[i]); j++) {
            FUNC1(&T->wheel[i][j]);
        }
    }

    FUNC1(&T->expired);

    for (i = 0; i < FUNC0(T->pending); i++) {
        T->pending[i] = 0;
    }

    T->curtime = 0;

    return T;
}