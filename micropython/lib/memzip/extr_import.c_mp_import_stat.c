
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_import_stat_t ;
struct TYPE_3__ {scalar_t__ is_dir; } ;
typedef TYPE_1__ MEMZIP_FILE_INFO ;


 int MP_IMPORT_STAT_DIR ;
 int MP_IMPORT_STAT_FILE ;
 int MP_IMPORT_STAT_NO_EXIST ;
 scalar_t__ MZ_OK ;
 scalar_t__ memzip_stat (char const*,TYPE_1__*) ;

mp_import_stat_t mp_import_stat(const char *path) {
    MEMZIP_FILE_INFO info;

    if (memzip_stat(path, &info) != MZ_OK) {
        return MP_IMPORT_STAT_NO_EXIST;
    }

    if (info.is_dir) {
        return MP_IMPORT_STAT_DIR;
    }
    return MP_IMPORT_STAT_FILE;
}
