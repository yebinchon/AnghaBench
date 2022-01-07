
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int last_mod_time; int last_mod_date; int uncompressed_size; } ;
struct TYPE_5__ {int is_dir; int last_mod_time; int last_mod_date; int file_size; } ;
typedef int MEMZIP_RESULT ;
typedef TYPE_1__ MEMZIP_FILE_INFO ;
typedef TYPE_2__ MEMZIP_FILE_HDR ;


 int MZ_NO_FILE ;
 int MZ_OK ;
 TYPE_2__* memzip_find_file_header (char const*) ;
 scalar_t__ memzip_is_dir (char const*) ;

MEMZIP_RESULT memzip_stat(const char *path, MEMZIP_FILE_INFO *info) {
    const MEMZIP_FILE_HDR *file_hdr = memzip_find_file_header(path);
    if (file_hdr == ((void*)0)) {
        if (memzip_is_dir(path)) {
            info->file_size = 0;
            info->last_mod_date = 0;
            info->last_mod_time = 0;
            info->is_dir = 1;
            return MZ_OK;
        }
        return MZ_NO_FILE;
    }
    info->file_size = file_hdr->uncompressed_size;
    info->last_mod_date = file_hdr->last_mod_date;
    info->last_mod_time = file_hdr->last_mod_time;
    info->is_dir = 0;

    return MZ_OK;
}
