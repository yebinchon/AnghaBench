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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const**,int,char const**,long) ; 

__attribute__((used)) static zend_bool
FUNC1(const char *key, int key_len, zval *z_from, zval *z_to, long ttl) {

    const char *cmd_list[] = {"SMEMBERS"};
    const char *cmd_add[] = {"SADD"};
    return FUNC0(key, key_len, z_from, z_to, 1, cmd_list, 1, cmd_add, ttl);
}