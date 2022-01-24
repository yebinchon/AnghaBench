#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct stat {int dummy; } ;
struct dirent {scalar_t__ d_type; char* d_name; } ;
struct TYPE_7__ {int exists; scalar_t__ hash; char* name; char const* size_filename; char const* hw_sector_size_filename; int size; int hw_sector_size; struct TYPE_7__* next; } ;
struct TYPE_6__ {int logged_error; TYPE_2__* disks; scalar_t__ all_disks_total; } ;
typedef  int /*<<< orphan*/  DIR ;
typedef  TYPE_1__ BTRFS_NODE ;
typedef  TYPE_2__ BTRFS_DISK ;

/* Variables and functions */
 scalar_t__ DT_LNK ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,int*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 void* FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static inline int FUNC13(BTRFS_NODE *node, const char *path) {
    char filename[FILENAME_MAX + 1];

    node->all_disks_total = 0;

    BTRFS_DISK *d;
    for(d = node->disks ; d ; d = d->next)
        d->exists = 0;

    DIR *dir = FUNC4(path);
    if (!dir) {
        if(!node->logged_error) {
            FUNC3("BTRFS: Cannot open directory '%s'.", path);
            node->logged_error = 1;
        }
        return 1;
    }
    node->logged_error = 0;

    struct dirent *de = NULL;
    while ((de = FUNC6(dir))) {
        if (de->d_type != DT_LNK
            || !FUNC10(de->d_name, ".")
            || !FUNC10(de->d_name, "..")
                ) {
            // info("BTRFS: ignoring '%s'", de->d_name);
            continue;
        }

        uint32_t hash = FUNC7(de->d_name);

        // --------------------------------------------------------------------
        // search for it

        for(d = node->disks ; d ; d = d->next) {
            if(hash == d->hash && !FUNC10(de->d_name, d->name))
                break;
        }

        // --------------------------------------------------------------------
        // did we find it?

        if(!d) {
            d = FUNC1(sizeof(BTRFS_DISK), 1);

            d->name = FUNC11(de->d_name);
            d->hash = FUNC7(d->name);

            FUNC8(filename, FILENAME_MAX, "%s/%s/size", path, de->d_name);
            d->size_filename = FUNC11(filename);

            // for bcache
            FUNC8(filename, FILENAME_MAX, "%s/%s/bcache/../queue/hw_sector_size", path, de->d_name);
            struct stat sb;
            if(FUNC9(filename, &sb) == -1) {
                // for disks
                FUNC8(filename, FILENAME_MAX, "%s/%s/queue/hw_sector_size", path, de->d_name);
                if(FUNC9(filename, &sb) == -1)
                    // for partitions
                    FUNC8(filename, FILENAME_MAX, "%s/%s/../queue/hw_sector_size", path, de->d_name);
            }

            d->hw_sector_size_filename = FUNC11(filename);

            // link it
            d->next = node->disks;
            node->disks = d;
        }

        d->exists = 1;


        // --------------------------------------------------------------------
        // update the values

        if(FUNC5(d->size_filename, &d->size) != 0) {
            FUNC3("BTRFS: failed to read '%s'", d->size_filename);
            d->exists = 0;
            continue;
        }

        if(FUNC5(d->hw_sector_size_filename, &d->hw_sector_size) != 0) {
            FUNC3("BTRFS: failed to read '%s'", d->hw_sector_size_filename);
            d->exists = 0;
            continue;
        }

        node->all_disks_total += d->size * d->hw_sector_size;
    }
    FUNC2(dir);

    // ------------------------------------------------------------------------
    // cleanup

    BTRFS_DISK *last = NULL;
    d = node->disks;

    while(d) {
        if(FUNC12(!d->exists)) {
            if(FUNC12(node->disks == d)) {
                node->disks = d->next;
                FUNC0(d);
                d = node->disks;
                last = NULL;
            }
            else {
                last->next = d->next;
                FUNC0(d);
                d = last->next;
            }

            continue;
        }

        last = d;
        d = d->next;
    }

    return 0;
}