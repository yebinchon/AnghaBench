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
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  dump_to_file ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*,size_t) ; 

int FUNC1(const json_t *json, FILE *output, size_t flags)
{
    return FUNC0(json, dump_to_file, (void *)output, flags);
}