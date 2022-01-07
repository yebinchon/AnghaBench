
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_flags_t ;
struct zip_dirent {scalar_t__ uncomp_size; scalar_t__ comp_size; scalar_t__ offset; } ;


 int ZIP_FL_CENTRAL ;
 scalar_t__ ZIP_UINT32_MAX ;

int
_zip_dirent_needs_zip64(const struct zip_dirent *de, zip_flags_t flags)
{
    if (de->uncomp_size >= ZIP_UINT32_MAX || de->comp_size >= ZIP_UINT32_MAX
 || ((flags & ZIP_FL_CENTRAL) && de->offset >= ZIP_UINT32_MAX))
 return 1;

    return 0;
}
