#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* db_filename; scalar_t__ log_count; int /*<<< orphan*/  machines_urls_count; int /*<<< orphan*/  persons_urls_count; int /*<<< orphan*/  urls_count; scalar_t__ usages_count; int /*<<< orphan*/  machines_count; int /*<<< orphan*/  persons_count; int /*<<< orphan*/  persons; int /*<<< orphan*/  machines; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,char*) ; 
 TYPE_1__ registry ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  registry_machine_save ; 
 int /*<<< orphan*/  registry_person_save ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (char*) ; 

int FUNC14(void) {
    if(FUNC12(!registry.enabled))
        return -1;

    if(FUNC12(!FUNC9()))
        return -2;

    FUNC4();

    char tmp_filename[FILENAME_MAX + 1];
    char old_filename[FILENAME_MAX + 1];

    FUNC11(old_filename, FILENAME_MAX, "%s.old", registry.db_filename);
    FUNC11(tmp_filename, FILENAME_MAX, "%s.tmp", registry.db_filename);

    FUNC0(D_REGISTRY, "Registry: Creating file '%s'", tmp_filename);
    FILE *fp = FUNC6(tmp_filename, "w");
    if(!fp) {
        FUNC2("Registry: Cannot create file: %s", tmp_filename);
        FUNC3();
        return -1;
    }

    // dictionary_get_all() has its own locking, so this is safe to do

    FUNC0(D_REGISTRY, "Saving all machines");
    int bytes1 = FUNC1(registry.machines, registry_machine_save, fp);
    if(bytes1 < 0) {
        FUNC2("Registry: Cannot save registry machines - return value %d", bytes1);
        FUNC5(fp);
        FUNC3();
        return bytes1;
    }
    FUNC0(D_REGISTRY, "Registry: saving machines took %d bytes", bytes1);

    FUNC0(D_REGISTRY, "Saving all persons");
    int bytes2 = FUNC1(registry.persons, registry_person_save, fp);
    if(bytes2 < 0) {
        FUNC2("Registry: Cannot save registry persons - return value %d", bytes2);
        FUNC5(fp);
        FUNC3();
        return bytes2;
    }
    FUNC0(D_REGISTRY, "Registry: saving persons took %d bytes", bytes2);

    // save the totals
    FUNC7(fp, "T\t%016llx\t%016llx\t%016llx\t%016llx\t%016llx\t%016llx\n",
            registry.persons_count,
            registry.machines_count,
            registry.usages_count + 1, // this is required - it is lost on db rotation
            registry.urls_count,
            registry.persons_urls_count,
            registry.machines_urls_count
    );

    FUNC5(fp);

    errno = 0;

    // remove the .old db
    FUNC0(D_REGISTRY, "Registry: Removing old db '%s'", old_filename);
    if(FUNC13(old_filename) == -1 && errno != ENOENT)
        FUNC2("Registry: cannot remove old registry file '%s'", old_filename);

    // rename the db to .old
    FUNC0(D_REGISTRY, "Registry: Link current db '%s' to .old: '%s'", registry.db_filename, old_filename);
    if(FUNC8(registry.db_filename, old_filename) == -1 && errno != ENOENT)
        FUNC2("Registry: cannot move file '%s' to '%s'. Saving registry DB failed!", registry.db_filename, old_filename);

    else {
        // remove the database (it is saved in .old)
        FUNC0(D_REGISTRY, "Registry: removing db '%s'", registry.db_filename);
        if (FUNC13(registry.db_filename) == -1 && errno != ENOENT)
            FUNC2("Registry: cannot remove old registry file '%s'", registry.db_filename);

        // move the .tmp to make it active
        FUNC0(D_REGISTRY, "Registry: linking tmp db '%s' to active db '%s'", tmp_filename, registry.db_filename);
        if (FUNC8(tmp_filename, registry.db_filename) == -1) {
            FUNC2("Registry: cannot move file '%s' to '%s'. Saving registry DB failed!", tmp_filename,
                    registry.db_filename);

            // move the .old back
            FUNC0(D_REGISTRY, "Registry: linking old db '%s' to active db '%s'", old_filename, registry.db_filename);
            if(FUNC8(old_filename, registry.db_filename) == -1)
                FUNC2("Registry: cannot move file '%s' to '%s'. Recovering the old registry DB failed!", old_filename, registry.db_filename);
        }
        else {
            FUNC0(D_REGISTRY, "Registry: removing tmp db '%s'", tmp_filename);
            if(FUNC13(tmp_filename) == -1)
                FUNC2("Registry: cannot remove tmp registry file '%s'", tmp_filename);

            // it has been moved successfully
            // discard the current registry log
            FUNC10();
            registry.log_count = 0;
        }
    }

    // continue operations
    FUNC3();

    return -1;
}