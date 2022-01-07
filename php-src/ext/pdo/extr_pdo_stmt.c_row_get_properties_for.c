
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_prop_purpose ;
typedef int zend_object ;
struct TYPE_9__ {int properties; } ;
struct TYPE_7__ {int column_count; TYPE_1__* columns; TYPE_4__ std; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {TYPE_2__* stmt; } ;
typedef TYPE_3__ pdo_row_t ;
struct TYPE_6__ {int name; } ;
typedef int HashTable ;


 scalar_t__ ZEND_PROP_PURPOSE_DEBUG ;
 int fetch_value (TYPE_2__*,int *,int,int *) ;
 int rebuild_object_properties (TYPE_4__*) ;
 int * zend_array_dup (int ) ;
 int zend_hash_update (int *,int ,int *) ;
 int * zend_std_get_properties_for (int *,scalar_t__) ;

__attribute__((used)) static HashTable *row_get_properties_for(zend_object *object, zend_prop_purpose purpose)
{
 pdo_row_t *row = (pdo_row_t *)object;
 pdo_stmt_t *stmt = row->stmt;
 HashTable *props;
 int i;

 if (purpose != ZEND_PROP_PURPOSE_DEBUG || stmt == ((void*)0)) {
  return zend_std_get_properties_for(object, purpose);
 }

 if (!stmt->std.properties) {
  rebuild_object_properties(&stmt->std);
 }
 props = zend_array_dup(stmt->std.properties);
 for (i = 0; i < stmt->column_count; i++) {
  zval val;
  fetch_value(stmt, &val, i, ((void*)0));

  zend_hash_update(props, stmt->columns[i].name, &val);
 }
 return props;
}
