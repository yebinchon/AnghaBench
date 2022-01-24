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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  definition_tests ; 
 int /*<<< orphan*/  merge_tests ; 
 int /*<<< orphan*/  parser_tests ; 
 int /*<<< orphan*/  test_definition_compares ; 
 int /*<<< orphan*/  test_property ; 
 int /*<<< orphan*/  test_property_defn_cache ; 
 int /*<<< orphan*/  test_property_merge ; 
 int /*<<< orphan*/  test_property_parse ; 
 int /*<<< orphan*/  test_property_string ; 
 int /*<<< orphan*/  test_query_cache_stochastic ; 
 int /*<<< orphan*/  test_register_deregister ; 

int FUNC3(void)
{
    FUNC1(test_property_string);
    FUNC0(test_property_parse, FUNC2(parser_tests));
    FUNC0(test_property_merge, FUNC2(merge_tests));
    FUNC1(test_property_defn_cache);
    FUNC0(test_definition_compares, FUNC2(definition_tests));
    FUNC1(test_register_deregister);
    FUNC1(test_property);
    FUNC1(test_query_cache_stochastic);
    return 1;
}