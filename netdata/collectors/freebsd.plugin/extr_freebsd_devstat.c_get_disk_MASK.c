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
struct disk {scalar_t__ hash; char const* name; struct disk* next; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 struct disk* FUNC0 (int,int) ; 
 int /*<<< orphan*/  disks_added ; 
 struct disk* disks_last_used ; 
 struct disk* disks_root ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 char const* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct disk *FUNC6(const char *name) {
    struct disk *dm;

    uint32_t hash = FUNC1(name);

    // search it, from the last position to the end
    for(dm = disks_last_used ; dm ; dm = dm->next) {
        if (FUNC5(hash == dm->hash && !FUNC2(name, dm->name))) {
            disks_last_used = dm->next;
            return dm;
        }
    }

    // search it from the beginning to the last position we used
    for(dm = disks_root ; dm != disks_last_used ; dm = dm->next) {
        if (FUNC5(hash == dm->hash && !FUNC2(name, dm->name))) {
            disks_last_used = dm->next;
            return dm;
        }
    }

    // create a new one
    dm = FUNC0(1, sizeof(struct disk));
    dm->name = FUNC3(name);
    dm->hash = FUNC1(dm->name);
    dm->len = FUNC4(dm->name);
    disks_added++;

    // link it to the end
    if (disks_root) {
        struct disk *e;
        for(e = disks_root; e->next ; e = e->next) ;
        e->next = dm;
    }
    else
        disks_root = dm;

    return dm;
}