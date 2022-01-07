
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ oth; } ;
typedef TYPE_1__ spl_filesystem_object ;
struct TYPE_6__ {int refcount; int is_persistent; } ;
typedef TYPE_2__ phar_archive_data ;



__attribute__((used)) static void phar_spl_foreign_clone(spl_filesystem_object *src, spl_filesystem_object *dst)
{
 phar_archive_data *phar_data = (phar_archive_data *) dst->oth;

 if (!phar_data->is_persistent) {
  ++(phar_data->refcount);
 }
}
