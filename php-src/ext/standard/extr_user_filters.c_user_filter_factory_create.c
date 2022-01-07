
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ uint8_t ;
struct php_user_filter_data {int * ce; int classname; } ;
struct TYPE_6__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;


 int BG (int ) ;
 int E_WARNING ;
 scalar_t__ FAILURE ;
 scalar_t__ IS_FALSE ;
 scalar_t__ IS_UNDEF ;
 int ZEND_ASSERT (int) ;
 int ZSTR_VAL (int ) ;
 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_RES (int *,int ) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int ZVAL_UNDEF (int *) ;
 int Z_OBJ (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int add_property_null (int *,char*) ;
 int add_property_string (int *,char*,char*) ;
 int add_property_zval (int *,char*,int *) ;
 int call_user_function (int *,int *,int *,int *,int ,int *) ;
 int efree (char*) ;
 int le_userfilters ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ object_init_ex (int *,int *) ;
 int php_error_docref (int *,int ,char*,...) ;
 TYPE_1__* php_stream_filter_alloc (int *,int *,int ) ;
 int php_stream_filter_free (TYPE_1__*) ;
 char* safe_emalloc (size_t,int,int) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;
 int user_filter_map ;
 int userfilter_ops ;
 struct php_user_filter_data* zend_hash_str_find_ptr (int ,char*,size_t) ;
 int * zend_lookup_class (int ) ;
 int zend_register_resource (TYPE_1__*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static php_stream_filter *user_filter_factory_create(const char *filtername,
  zval *filterparams, uint8_t persistent)
{
 struct php_user_filter_data *fdat = ((void*)0);
 php_stream_filter *filter;
 zval obj, zfilter;
 zval func_name;
 zval retval;
 size_t len;


 if (persistent) {
  php_error_docref(((void*)0), E_WARNING,
    "cannot use a user-space filter with a persistent stream");
  return ((void*)0);
 }

 len = strlen(filtername);


 if (((void*)0) == (fdat = zend_hash_str_find_ptr(BG(user_filter_map), (char*)filtername, len))) {
  char *period;






  if ((period = strrchr(filtername, '.'))) {
   char *wildcard = safe_emalloc(len, 1, 3);


   memcpy(wildcard, filtername, len + 1);
   period = wildcard + (period - filtername);
   while (period) {
    ZEND_ASSERT(period[0] == '.');
    period[1] = '*';
    period[2] = '\0';
    if (((void*)0) != (fdat = zend_hash_str_find_ptr(BG(user_filter_map), wildcard, strlen(wildcard)))) {
     period = ((void*)0);
    } else {
     *period = '\0';
     period = strrchr(wildcard, '.');
    }
   }
   efree(wildcard);
  }
  if (fdat == ((void*)0)) {
   php_error_docref(((void*)0), E_WARNING,
     "Err, filter \"%s\" is not in the user-filter map, but somehow the user-filter-factory was invoked for it!?", filtername);
   return ((void*)0);
  }
 }


 if (fdat->ce == ((void*)0)) {
  if (((void*)0) == (fdat->ce = zend_lookup_class(fdat->classname))) {
   php_error_docref(((void*)0), E_WARNING,
     "user-filter \"%s\" requires class \"%s\", but that class is not defined",
     filtername, ZSTR_VAL(fdat->classname));
   return ((void*)0);
  }
 }


 if (object_init_ex(&obj, fdat->ce) == FAILURE) {
  return ((void*)0);
 }

 filter = php_stream_filter_alloc(&userfilter_ops, ((void*)0), 0);
 if (filter == ((void*)0)) {
  zval_ptr_dtor(&obj);
  return ((void*)0);
 }


 add_property_string(&obj, "filtername", (char*)filtername);


 if (filterparams) {
  add_property_zval(&obj, "params", filterparams);
 } else {
  add_property_null(&obj, "params");
 }


 ZVAL_STRINGL(&func_name, "oncreate", sizeof("oncreate")-1);

 call_user_function(((void*)0),
   &obj,
   &func_name,
   &retval,
   0, ((void*)0));

 if (Z_TYPE(retval) != IS_UNDEF) {
  if (Z_TYPE(retval) == IS_FALSE) {

   zval_ptr_dtor(&retval);


   ZVAL_UNDEF(&filter->abstract);
   php_stream_filter_free(filter);


   zval_ptr_dtor(&obj);


   return ((void*)0);
  }
  zval_ptr_dtor(&retval);
 }
 zval_ptr_dtor(&func_name);


 ZVAL_RES(&zfilter, zend_register_resource(filter, le_userfilters));
 ZVAL_OBJ(&filter->abstract, Z_OBJ(obj));
 add_property_zval(&obj, "filter", &zfilter);

 zval_ptr_dtor(&zfilter);

 return filter;
}
