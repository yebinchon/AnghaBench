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
struct tc_device {int /*<<< orphan*/  classes_index; } ;
struct tc_class {char* id; scalar_t__ hash; } ;
typedef  int /*<<< orphan*/  avl ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static inline struct tc_class *FUNC2(struct tc_device *st, const char *id, uint32_t hash) {
    struct tc_class tmp;
    tmp.id = (char *)id;
    tmp.hash = (hash)?hash:FUNC1(tmp.id);

    return (struct tc_class *)FUNC0(&(st->classes_index), (avl *) &tmp);
}