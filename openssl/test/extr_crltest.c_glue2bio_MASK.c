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
 int /*<<< orphan*/ * FUNC0 (char*,size_t) ; 
 char* FUNC1 (char const**,size_t*) ; 

__attribute__((used)) static BIO *FUNC2(const char **pem, char **out)
{
    size_t s = 0;

    *out = FUNC1(pem, &s);
    return FUNC0(*out, s);
}