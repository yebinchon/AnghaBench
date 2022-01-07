
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_entry {int changes; int orig; } ;


 int _zip_dirent_free (int ) ;
 int _zip_unchange_data (struct zip_entry*) ;

void
_zip_entry_finalize(struct zip_entry *e)
{
    _zip_unchange_data(e);
    _zip_dirent_free(e->orig);
    _zip_dirent_free(e->changes);
}
