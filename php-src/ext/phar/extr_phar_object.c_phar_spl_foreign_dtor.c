
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * oth; } ;
typedef TYPE_1__ spl_filesystem_object ;
struct TYPE_6__ {int is_persistent; } ;
typedef TYPE_2__ phar_archive_data ;


 int phar_archive_delref (TYPE_2__*) ;

__attribute__((used)) static void phar_spl_foreign_dtor(spl_filesystem_object *object)
{
 phar_archive_data *phar = (phar_archive_data *) object->oth;

 if (!phar->is_persistent) {
  phar_archive_delref(phar);
 }

 object->oth = ((void*)0);
}
