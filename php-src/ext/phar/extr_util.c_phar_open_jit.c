
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int filename; } ;
typedef TYPE_1__ phar_entry_info ;
struct TYPE_9__ {int fname; } ;
typedef TYPE_2__ phar_archive_data ;


 scalar_t__ FAILURE ;
 int SEEK_SET ;
 scalar_t__ phar_open_entry_fp (TYPE_1__*,char**,int) ;
 int phar_seek_efp (TYPE_1__*,int ,int ,int ,int) ;
 int spprintf (char**,int,char*,int ,int ) ;

phar_entry_info * phar_open_jit(phar_archive_data *phar, phar_entry_info *entry, char **error)
{
 if (error) {
  *error = ((void*)0);
 }

 if (FAILURE == phar_open_entry_fp(entry, error, 1)) {
  return ((void*)0);
 }
 if (-1 == phar_seek_efp(entry, 0, SEEK_SET, 0, 1)) {
  spprintf(error, 4096, "phar error: cannot seek to start of file \"%s\" in phar \"%s\"", entry->filename, phar->fname);
  return ((void*)0);
 }
 return entry;
}
