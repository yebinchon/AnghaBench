
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* db_filename; scalar_t__ log_count; int machines_urls_count; int persons_urls_count; int urls_count; scalar_t__ usages_count; int machines_count; int persons_count; int persons; int machines; int enabled; } ;
typedef int FILE ;


 int D_REGISTRY ;
 scalar_t__ ENOENT ;
 int FILENAME_MAX ;
 int debug (int ,char*,...) ;
 int dictionary_get_all (int ,int ,int *) ;
 scalar_t__ errno ;
 int error (char*,...) ;
 int error_log_limit_reset () ;
 int error_log_limit_unlimited () ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int ,int ,scalar_t__,int ,int ,int ) ;
 int link (char*,char*) ;
 TYPE_1__ registry ;
 int registry_db_should_be_saved () ;
 int registry_log_recreate () ;
 int registry_machine_save ;
 int registry_person_save ;
 int snprintfz (char*,int ,char*,char*) ;
 scalar_t__ unlikely (int) ;
 int unlink (char*) ;

int registry_db_save(void) {
    if(unlikely(!registry.enabled))
        return -1;

    if(unlikely(!registry_db_should_be_saved()))
        return -2;

    error_log_limit_unlimited();

    char tmp_filename[FILENAME_MAX + 1];
    char old_filename[FILENAME_MAX + 1];

    snprintfz(old_filename, FILENAME_MAX, "%s.old", registry.db_filename);
    snprintfz(tmp_filename, FILENAME_MAX, "%s.tmp", registry.db_filename);

    debug(D_REGISTRY, "Registry: Creating file '%s'", tmp_filename);
    FILE *fp = fopen(tmp_filename, "w");
    if(!fp) {
        error("Registry: Cannot create file: %s", tmp_filename);
        error_log_limit_reset();
        return -1;
    }



    debug(D_REGISTRY, "Saving all machines");
    int bytes1 = dictionary_get_all(registry.machines, registry_machine_save, fp);
    if(bytes1 < 0) {
        error("Registry: Cannot save registry machines - return value %d", bytes1);
        fclose(fp);
        error_log_limit_reset();
        return bytes1;
    }
    debug(D_REGISTRY, "Registry: saving machines took %d bytes", bytes1);

    debug(D_REGISTRY, "Saving all persons");
    int bytes2 = dictionary_get_all(registry.persons, registry_person_save, fp);
    if(bytes2 < 0) {
        error("Registry: Cannot save registry persons - return value %d", bytes2);
        fclose(fp);
        error_log_limit_reset();
        return bytes2;
    }
    debug(D_REGISTRY, "Registry: saving persons took %d bytes", bytes2);


    fprintf(fp, "T\t%016llx\t%016llx\t%016llx\t%016llx\t%016llx\t%016llx\n",
            registry.persons_count,
            registry.machines_count,
            registry.usages_count + 1,
            registry.urls_count,
            registry.persons_urls_count,
            registry.machines_urls_count
    );

    fclose(fp);

    errno = 0;


    debug(D_REGISTRY, "Registry: Removing old db '%s'", old_filename);
    if(unlink(old_filename) == -1 && errno != ENOENT)
        error("Registry: cannot remove old registry file '%s'", old_filename);


    debug(D_REGISTRY, "Registry: Link current db '%s' to .old: '%s'", registry.db_filename, old_filename);
    if(link(registry.db_filename, old_filename) == -1 && errno != ENOENT)
        error("Registry: cannot move file '%s' to '%s'. Saving registry DB failed!", registry.db_filename, old_filename);

    else {

        debug(D_REGISTRY, "Registry: removing db '%s'", registry.db_filename);
        if (unlink(registry.db_filename) == -1 && errno != ENOENT)
            error("Registry: cannot remove old registry file '%s'", registry.db_filename);


        debug(D_REGISTRY, "Registry: linking tmp db '%s' to active db '%s'", tmp_filename, registry.db_filename);
        if (link(tmp_filename, registry.db_filename) == -1) {
            error("Registry: cannot move file '%s' to '%s'. Saving registry DB failed!", tmp_filename,
                    registry.db_filename);


            debug(D_REGISTRY, "Registry: linking old db '%s' to active db '%s'", old_filename, registry.db_filename);
            if(link(old_filename, registry.db_filename) == -1)
                error("Registry: cannot move file '%s' to '%s'. Recovering the old registry DB failed!", old_filename, registry.db_filename);
        }
        else {
            debug(D_REGISTRY, "Registry: removing tmp db '%s'", tmp_filename);
            if(unlink(tmp_filename) == -1)
                error("Registry: cannot remove tmp registry file '%s'", tmp_filename);



            registry_log_recreate();
            registry.log_count = 0;
        }
    }


    error_log_limit_reset();

    return -1;
}
