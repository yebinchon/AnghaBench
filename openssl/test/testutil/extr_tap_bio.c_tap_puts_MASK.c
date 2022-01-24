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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC2(BIO *b, const char *str)
{
    size_t m;

    if (!FUNC1(b, str, FUNC0(str), &m))
        return 0;
    return m;
}