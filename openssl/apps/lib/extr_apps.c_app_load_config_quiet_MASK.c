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
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FORMAT_TEXT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char,int /*<<< orphan*/ ) ; 

CONF *FUNC3(const char *filename)
{
    BIO *in;
    CONF *conf;

    in = FUNC2(filename, 'r', FORMAT_TEXT);
    if (in == NULL)
        return NULL;

    conf = FUNC1(in, filename);
    FUNC0(in);
    return conf;
}