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
typedef  int /*<<< orphan*/  sym ;
struct nn_symbol_properties {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (int,int*) ; 
 int FUNC3 (int,struct nn_symbol_properties*,int) ; 

int FUNC4 ()
{
    int i;
    struct nn_symbol_properties sym;
    int value;

    FUNC0 (FUNC2 (-1, NULL) == NULL);
    FUNC0 (FUNC1 () == EINVAL);
    FUNC0 (FUNC3 (-1, &sym, (int) sizeof (sym)) == 0);

    FUNC0 (FUNC2 (2000, NULL) == NULL);
    FUNC0 (FUNC1 () == EINVAL);
    FUNC0 (FUNC3 (2000, &sym, (int) sizeof (sym)) == 0);

    FUNC0 (FUNC2 (6, &value) != NULL);
    FUNC0 (value != 0);
    FUNC0 (FUNC3 (6, &sym, (int) sizeof (sym)) == sizeof (sym));

    for (i = 0; ; ++i) {
        const char* name = FUNC2 (i, &value);
        if (name == NULL) {
            FUNC0 (FUNC1 () == EINVAL);
            break;
        }
    }

    for (i = 0; ; ++i) {
        if (FUNC3 (i, &sym, sizeof (sym)) == 0)
            break;
    }

    return 0;
}