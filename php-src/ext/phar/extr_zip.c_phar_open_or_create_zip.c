
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int is_data; int is_zip; scalar_t__ is_tar; scalar_t__ internal_file_start; scalar_t__ is_brandnew; } ;
typedef TYPE_1__ phar_archive_data ;


 int FAILURE ;
 int SUCCESS ;
 int phar_create_or_parse_filename (char*,size_t,char*,size_t,int,int ,TYPE_1__**,char**) ;
 int spprintf (char**,int,char*,char*) ;

int phar_open_or_create_zip(char *fname, size_t fname_len, char *alias, size_t alias_len, int is_data, uint32_t options, phar_archive_data** pphar, char **error)
{
 phar_archive_data *phar;
 int ret = phar_create_or_parse_filename(fname, fname_len, alias, alias_len, is_data, options, &phar, error);

 if (FAILURE == ret) {
  return FAILURE;
 }

 if (pphar) {
  *pphar = phar;
 }

 phar->is_data = is_data;

 if (phar->is_zip) {
  return ret;
 }

 if (phar->is_brandnew) {
  phar->internal_file_start = 0;
  phar->is_zip = 1;
  phar->is_tar = 0;
  return SUCCESS;
 }


 if (error) {
  spprintf(error, 4096, "phar zip error: phar \"%s\" already exists as a regular phar and must be deleted from disk prior to creating as a zip-based phar", fname);
 }

 return FAILURE;
}
