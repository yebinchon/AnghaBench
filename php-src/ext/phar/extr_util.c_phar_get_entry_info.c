
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phar_entry_info ;
typedef int phar_archive_data ;


 int * phar_get_entry_info_dir (int *,char*,size_t,int ,char**,int) ;

phar_entry_info *phar_get_entry_info(phar_archive_data *phar, char *path, size_t path_len, char **error, int security)
{
 return phar_get_entry_info_dir(phar, path, path_len, 0, error, security);
}
