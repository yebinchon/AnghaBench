
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MP_IMPORT_STAT_FILE ;
 scalar_t__ mp_frozen_stat (char const*) ;
 scalar_t__ mp_import_stat (char const*) ;
 int pyexec_file (char const*) ;
 int pyexec_frozen_module (char const*) ;

int pyexec_file_if_exists(const char *filename) {





    if (mp_import_stat(filename) != MP_IMPORT_STAT_FILE) {
        return 1;
    }
    return pyexec_file(filename);
}
