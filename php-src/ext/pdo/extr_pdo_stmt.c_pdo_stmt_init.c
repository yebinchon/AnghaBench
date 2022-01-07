
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zend_object_handlers ;
typedef int zend_class_entry ;
struct TYPE_10__ {void* unserialize; void* serialize; int create_object; int ce_flags; } ;
struct TYPE_9__ {int compare; int get_class_name; int get_constructor; int get_method; int get_properties_for; int unset_dimension; int has_dimension; int write_dimension; int read_dimension; int unset_property; int has_property; int write_property; int read_property; int * get_property_ptr_ptr; int * clone_obj; int free_obj; int dtor_obj; int offset; } ;
struct TYPE_8__ {void* unserialize; void* serialize; int create_object; int get_iterator; } ;


 int INIT_CLASS_ENTRY (int ,char*,int ) ;
 int XtOffsetOf (int ,int ) ;
 int ZEND_ACC_FINAL ;
 int ZEND_ACC_PUBLIC ;
 int dbstmt_compare ;
 int dbstmt_method_get ;
 int dbstmt_prop_delete ;
 int dbstmt_prop_write ;
 int memcpy (TYPE_3__*,int *,int) ;
 TYPE_1__* pdo_dbstmt_ce ;
 int pdo_dbstmt_free_storage ;
 int pdo_dbstmt_functions ;
 int pdo_dbstmt_new ;
 TYPE_3__ pdo_dbstmt_object_handlers ;
 TYPE_4__* pdo_row_ce ;
 int pdo_row_free_storage ;
 int pdo_row_functions ;
 int pdo_row_new ;
 TYPE_3__ pdo_row_object_handlers ;
 int pdo_stmt_iter_get ;
 int pdo_stmt_t ;
 int row_compare ;
 int row_dim_delete ;
 int row_dim_exists ;
 int row_dim_read ;
 int row_dim_write ;
 int row_get_classname ;
 int row_get_ctor ;
 int row_get_properties_for ;
 int row_method_get ;
 int row_prop_delete ;
 int row_prop_exists ;
 int row_prop_read ;
 int row_prop_write ;
 int std ;
 int std_object_handlers ;
 int zend_ce_traversable ;
 int zend_class_implements (TYPE_1__*,int,int ) ;
 void* zend_class_serialize_deny ;
 void* zend_class_unserialize_deny ;
 int zend_declare_property_null (TYPE_1__*,char*,int,int ) ;
 int zend_objects_destroy_object ;
 void* zend_register_internal_class (int *) ;

void pdo_stmt_init(void)
{
 zend_class_entry ce;

 INIT_CLASS_ENTRY(ce, "PDOStatement", pdo_dbstmt_functions);
 pdo_dbstmt_ce = zend_register_internal_class(&ce);
 pdo_dbstmt_ce->get_iterator = pdo_stmt_iter_get;
 pdo_dbstmt_ce->create_object = pdo_dbstmt_new;
 pdo_dbstmt_ce->serialize = zend_class_serialize_deny;
 pdo_dbstmt_ce->unserialize = zend_class_unserialize_deny;
 zend_class_implements(pdo_dbstmt_ce, 1, zend_ce_traversable);
 zend_declare_property_null(pdo_dbstmt_ce, "queryString", sizeof("queryString")-1, ZEND_ACC_PUBLIC);

 memcpy(&pdo_dbstmt_object_handlers, &std_object_handlers, sizeof(zend_object_handlers));
 pdo_dbstmt_object_handlers.offset = XtOffsetOf(pdo_stmt_t, std);
 pdo_dbstmt_object_handlers.dtor_obj = zend_objects_destroy_object;
 pdo_dbstmt_object_handlers.free_obj = pdo_dbstmt_free_storage;
 pdo_dbstmt_object_handlers.write_property = dbstmt_prop_write;
 pdo_dbstmt_object_handlers.unset_property = dbstmt_prop_delete;
 pdo_dbstmt_object_handlers.get_method = dbstmt_method_get;
 pdo_dbstmt_object_handlers.compare = dbstmt_compare;
 pdo_dbstmt_object_handlers.clone_obj = ((void*)0);

 INIT_CLASS_ENTRY(ce, "PDORow", pdo_row_functions);
 pdo_row_ce = zend_register_internal_class(&ce);
 pdo_row_ce->ce_flags |= ZEND_ACC_FINAL;
 pdo_row_ce->create_object = pdo_row_new;
 pdo_row_ce->serialize = zend_class_serialize_deny;
 pdo_row_ce->unserialize = zend_class_unserialize_deny;

 memcpy(&pdo_row_object_handlers, &std_object_handlers, sizeof(zend_object_handlers));
 pdo_row_object_handlers.free_obj = pdo_row_free_storage;
 pdo_row_object_handlers.clone_obj = ((void*)0);
 pdo_row_object_handlers.get_property_ptr_ptr = ((void*)0);
 pdo_row_object_handlers.read_property = row_prop_read;
 pdo_row_object_handlers.write_property = row_prop_write;
 pdo_row_object_handlers.has_property = row_prop_exists;
 pdo_row_object_handlers.unset_property = row_prop_delete;
 pdo_row_object_handlers.read_dimension = row_dim_read;
 pdo_row_object_handlers.write_dimension = row_dim_write;
 pdo_row_object_handlers.has_dimension = row_dim_exists;
 pdo_row_object_handlers.unset_dimension = row_dim_delete;
 pdo_row_object_handlers.get_properties_for = row_get_properties_for;
 pdo_row_object_handlers.get_method = row_method_get;
 pdo_row_object_handlers.get_constructor = row_get_ctor;
 pdo_row_object_handlers.get_class_name = row_get_classname;
 pdo_row_object_handlers.compare = row_compare;
}
