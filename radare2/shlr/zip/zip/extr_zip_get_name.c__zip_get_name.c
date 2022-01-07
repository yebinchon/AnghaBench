
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef int zip_uint64_t ;
typedef int zip_flags_t ;
struct zip_error {int dummy; } ;
struct zip_dirent {int filename; } ;
struct zip {int dummy; } ;


 struct zip_dirent* _zip_get_dirent (struct zip*,int ,int ,struct zip_error*) ;
 int * _zip_string_get (int ,int *,int ,struct zip_error*) ;

const char *
_zip_get_name(struct zip *za, zip_uint64_t idx, zip_flags_t flags, struct zip_error *error)
{
    struct zip_dirent *de;
    const zip_uint8_t *str;

    if ((de=_zip_get_dirent(za, idx, flags, error)) == ((void*)0))
 return ((void*)0);

    if ((str=_zip_string_get(de->filename, ((void*)0), flags, error)) == ((void*)0))
 return ((void*)0);

    return (const char *)str;
}
