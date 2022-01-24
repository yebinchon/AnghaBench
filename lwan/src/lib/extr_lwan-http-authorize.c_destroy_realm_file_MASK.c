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
struct realm_password_file_t {int /*<<< orphan*/  entries; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct realm_password_file_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cache_entry *entry,
                               void *context __attribute__((unused)))
{
    struct realm_password_file_t *rpf = (struct realm_password_file_t *)entry;
    FUNC1(rpf->entries);
    FUNC0(rpf);
}