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
struct mount_point {scalar_t__ hash; char const* name; struct mount_point* next; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 struct mount_point* FUNC0 (int,int) ; 
 int /*<<< orphan*/  mount_points_added ; 
 struct mount_point* mount_points_last_used ; 
 struct mount_point* mount_points_root ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 char const* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct mount_point *FUNC6(const char *name) {
    struct mount_point *m;

    uint32_t hash = FUNC1(name);

    // search it, from the last position to the end
    for(m = mount_points_last_used ; m ; m = m->next) {
        if (FUNC5(hash == m->hash && !FUNC2(name, m->name))) {
            mount_points_last_used = m->next;
            return m;
        }
    }

    // search it from the beginning to the last position we used
    for(m = mount_points_root ; m != mount_points_last_used ; m = m->next) {
        if (FUNC5(hash == m->hash && !FUNC2(name, m->name))) {
            mount_points_last_used = m->next;
            return m;
        }
    }

    // create a new one
    m = FUNC0(1, sizeof(struct mount_point));
    m->name = FUNC3(name);
    m->hash = FUNC1(m->name);
    m->len = FUNC4(m->name);
    mount_points_added++;

    // link it to the end
    if (mount_points_root) {
        struct mount_point *e;
        for(e = mount_points_root; e->next ; e = e->next) ;
        e->next = m;
    }
    else
        mount_points_root = m;

    return m;
}