
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_9__ {int kv_used; int htab; } ;
typedef TYPE_1__ browser_data ;
struct TYPE_10__ {int * current_section_name; TYPE_3__* current_entry; TYPE_1__* bdata; } ;
typedef TYPE_2__ browscap_parser_ctx ;
struct TYPE_11__ {size_t prefix_len; int * contains_len; int * contains_start; int * parent; int kv_start; int kv_end; void* pattern; } ;
typedef TYPE_3__ browscap_entry ;
typedef int Z_TYPE_FLAGS_P ;


 int BROWSCAP_NUM_CONTAINS ;
 int E_CORE_ERROR ;
 int E_WARNING ;
 int GC_FLAGS (int ) ;
 int INI_STR (char*) ;
 int IS_ARRAY_PERSISTENT ;
 int UINT16_MAX ;


 int * ZSTR_CHAR (char) ;
 int * ZSTR_EMPTY_ALLOC () ;
 int ZSTR_IS_INTERNED (int *) ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 int * Z_STR_P (int *) ;
 int browscap_add_kv (TYPE_1__*,int *,int *,int) ;
 size_t browscap_compute_contains (int *,size_t,int *,int *) ;
 size_t browscap_compute_prefix_len (int *) ;
 int * browscap_intern_str (TYPE_2__*,int *,int) ;
 int * browscap_intern_str_ci (TYPE_2__*,int *,int) ;
 TYPE_3__* pemalloc (int,int) ;
 int php_error_docref (int *,int ,char*,int ) ;
 int strcasecmp (char*,char*) ;
 int strncasecmp (char*,char*,int) ;
 int zend_error (int ,char*,char*,int ) ;
 int zend_hash_update_ptr (int ,int *,TYPE_3__*) ;
 int * zend_new_interned_string (void*) ;
 void* zend_string_copy (int *) ;
 int zend_string_release (int *) ;

__attribute__((used)) static void php_browscap_parser_cb(zval *arg1, zval *arg2, zval *arg3, int callback_type, void *arg)
{
 browscap_parser_ctx *ctx = arg;
 browser_data *bdata = ctx->bdata;
 int persistent = GC_FLAGS(bdata->htab) & IS_ARRAY_PERSISTENT;

 if (!arg1) {
  return;
 }

 switch (callback_type) {
  case 129:
   if (ctx->current_entry != ((void*)0) && arg2) {
    zend_string *new_key, *new_value;


    if ((Z_STRLEN_P(arg2) == 2 && !strncasecmp(Z_STRVAL_P(arg2), "on", sizeof("on") - 1)) ||
     (Z_STRLEN_P(arg2) == 3 && !strncasecmp(Z_STRVAL_P(arg2), "yes", sizeof("yes") - 1)) ||
     (Z_STRLEN_P(arg2) == 4 && !strncasecmp(Z_STRVAL_P(arg2), "true", sizeof("true") - 1))
    ) {
     new_value = ZSTR_CHAR('1');
    } else if (
     (Z_STRLEN_P(arg2) == 2 && !strncasecmp(Z_STRVAL_P(arg2), "no", sizeof("no") - 1)) ||
     (Z_STRLEN_P(arg2) == 3 && !strncasecmp(Z_STRVAL_P(arg2), "off", sizeof("off") - 1)) ||
     (Z_STRLEN_P(arg2) == 4 && !strncasecmp(Z_STRVAL_P(arg2), "none", sizeof("none") - 1)) ||
     (Z_STRLEN_P(arg2) == 5 && !strncasecmp(Z_STRVAL_P(arg2), "false", sizeof("false") - 1))
    ) {
     new_value = ZSTR_EMPTY_ALLOC();
    } else {
     new_value = browscap_intern_str(ctx, Z_STR_P(arg2), persistent);
    }

    if (!strcasecmp(Z_STRVAL_P(arg1), "parent")) {

     if (ctx->current_section_name != ((void*)0) &&
      !strcasecmp(ZSTR_VAL(ctx->current_section_name), Z_STRVAL_P(arg2))
     ) {
      zend_error(E_CORE_ERROR, "Invalid browscap ini file: "
       "'Parent' value cannot be same as the section name: %s "
       "(in file %s)", ZSTR_VAL(ctx->current_section_name), INI_STR("browscap"));
      return;
     }

     if (ctx->current_entry->parent) {
      zend_string_release(ctx->current_entry->parent);
     }

     ctx->current_entry->parent = new_value;
    } else {
     new_key = browscap_intern_str_ci(ctx, Z_STR_P(arg1), persistent);
     browscap_add_kv(bdata, new_key, new_value, persistent);
     ctx->current_entry->kv_end = bdata->kv_used;
    }
   }
   break;
  case 128:
  {
   browscap_entry *entry;
   zend_string *pattern = Z_STR_P(arg1);
   size_t pos;
   int i;

   if (ZSTR_LEN(pattern) > UINT16_MAX) {
    php_error_docref(((void*)0), E_WARNING,
     "Skipping excessively long pattern of length %zd", ZSTR_LEN(pattern));
    break;
   }

   if (persistent) {
    pattern = zend_new_interned_string(zend_string_copy(pattern));
    if (ZSTR_IS_INTERNED(pattern)) {
     Z_TYPE_FLAGS_P(arg1) = 0;
    } else {
     zend_string_release(pattern);
    }
   }

   entry = ctx->current_entry
    = pemalloc(sizeof(browscap_entry), persistent);
   zend_hash_update_ptr(bdata->htab, pattern, entry);

   if (ctx->current_section_name) {
    zend_string_release(ctx->current_section_name);
   }
   ctx->current_section_name = zend_string_copy(pattern);

   entry->pattern = zend_string_copy(pattern);
   entry->kv_end = entry->kv_start = bdata->kv_used;
   entry->parent = ((void*)0);

   pos = entry->prefix_len = browscap_compute_prefix_len(pattern);
   for (i = 0; i < BROWSCAP_NUM_CONTAINS; i++) {
    pos = browscap_compute_contains(pattern, pos,
     &entry->contains_start[i], &entry->contains_len[i]);
   }
   break;
  }
 }
}
