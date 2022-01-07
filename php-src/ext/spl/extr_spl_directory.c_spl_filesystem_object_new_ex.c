
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; int info_class; int file_class; } ;
typedef TYPE_2__ spl_filesystem_object ;


 int object_properties_init (TYPE_1__*,int *) ;
 int spl_ce_SplFileInfo ;
 int spl_ce_SplFileObject ;
 int spl_filesystem_object_handlers ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *spl_filesystem_object_new_ex(zend_class_entry *class_type)
{
 spl_filesystem_object *intern;

 intern = zend_object_alloc(sizeof(spl_filesystem_object), class_type);

 intern->file_class = spl_ce_SplFileObject;
 intern->info_class = spl_ce_SplFileInfo;

 zend_object_std_init(&intern->std, class_type);
 object_properties_init(&intern->std, class_type);
 intern->std.handlers = &spl_filesystem_object_handlers;

 return &intern->std;
}
