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
typedef  scalar_t__ uint32_t ;
struct section {int /*<<< orphan*/  values_index; } ;
struct config_option {char* name; scalar_t__ hash; } ;
typedef  int /*<<< orphan*/  avl ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static struct config_option *FUNC2(struct section *co, const char *name, uint32_t hash) {
    struct config_option tmp;
    tmp.hash = (hash)?hash:FUNC1(name);
    tmp.name = (char *)name;

    return (struct config_option *)FUNC0(&(co->values_index), (avl *) &tmp);
}