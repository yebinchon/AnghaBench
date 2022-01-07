
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_dirent {int changed; int comment; int cloned; int extra_fields; int filename; } ;


 int ZIP_DIRENT_COMMENT ;
 int ZIP_DIRENT_EXTRA_FIELD ;
 int ZIP_DIRENT_FILENAME ;
 int _zip_ef_free (int ) ;
 int _zip_string_free (int ) ;

void
_zip_dirent_finalize(struct zip_dirent *zde)
{
    if (!zde->cloned || zde->changed & ZIP_DIRENT_FILENAME)
 _zip_string_free(zde->filename);
    if (!zde->cloned || zde->changed & ZIP_DIRENT_EXTRA_FIELD)
 _zip_ef_free(zde->extra_fields);
    if (!zde->cloned || zde->changed & ZIP_DIRENT_COMMENT)
 _zip_string_free(zde->comment);
}
