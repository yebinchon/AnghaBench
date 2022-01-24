#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {int /*<<< orphan*/  z_fun; } ;
typedef  TYPE_1__ RedisArray ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,int) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string *
FUNC4(RedisArray *ra, const char *key, int key_len)
{
    char *start, *end;

    if (FUNC0(ra->z_fun) != IS_NULL) {
        return FUNC1(ra, key, key_len);
    } else if ((start = FUNC2(key, '{')) == NULL || (end = FUNC2(start + 1, '}')) == NULL) {
        return FUNC3(key, key_len, 0);
    }
    /* found substring */
    return FUNC3(start + 1, end - start - 1, 0);
}