
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
typedef int pdo_dbh_t ;
struct TYPE_10__ {TYPE_1__ std; TYPE_8__* inner; } ;
typedef TYPE_2__ pdo_dbh_object_t ;
struct TYPE_11__ {int def_stmt_ce; } ;


 TYPE_8__* ecalloc (int,int) ;
 int object_properties_init (TYPE_1__*,int *) ;
 int pdo_dbh_object_handlers ;
 int pdo_dbstmt_ce ;
 int rebuild_object_properties (TYPE_1__*) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

zend_object *pdo_dbh_new(zend_class_entry *ce)
{
 pdo_dbh_object_t *dbh;

 dbh = zend_object_alloc(sizeof(pdo_dbh_object_t), ce);
 zend_object_std_init(&dbh->std, ce);
 object_properties_init(&dbh->std, ce);
 rebuild_object_properties(&dbh->std);
 dbh->inner = ecalloc(1, sizeof(pdo_dbh_t));
 dbh->inner->def_stmt_ce = pdo_dbstmt_ce;

 dbh->std.handlers = &pdo_dbh_object_handlers;

 return &dbh->std;
}
