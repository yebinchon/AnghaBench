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
typedef  int /*<<< orphan*/  mp_uint_t ;
typedef  int /*<<< orphan*/  mp_lexer_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_ENOENT ; 
 scalar_t__ MZ_OK ; 
 scalar_t__ FUNC0 (char const*,void**,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

mp_lexer_t *FUNC4(const char *filename)
{
    void *data;
    size_t len;

    if (FUNC0(filename, &data, &len) != MZ_OK) {
        FUNC2(MP_ENOENT);
    }

    return FUNC1(FUNC3(filename), (const char *)data, (mp_uint_t)len, 0);
}