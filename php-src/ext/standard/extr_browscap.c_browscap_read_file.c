
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_ini_parser_cb_t ;
struct TYPE_9__ {int fp; } ;
struct TYPE_10__ {TYPE_1__ handle; } ;
typedef TYPE_2__ zend_file_handle ;
struct TYPE_11__ {int kv_size; void* kv; scalar_t__ kv_used; void* htab; } ;
typedef TYPE_3__ browser_data ;
struct TYPE_12__ {int str_interned; int * current_section_name; int * current_entry; TYPE_3__* bdata; int member_0; } ;
typedef TYPE_4__ browscap_parser_ctx ;
typedef int browscap_kv ;


 int E_CORE_WARNING ;
 int FAILURE ;
 int SUCCESS ;
 int VCWD_FOPEN (char*,char*) ;
 int ZEND_INI_SCANNER_RAW ;
 int browscap_entry_dtor ;
 int browscap_entry_dtor_persistent ;
 void* pemalloc (int,int) ;
 scalar_t__ php_browscap_parser_cb ;
 int str_interned_dtor ;
 int zend_error (int ,char*,char*) ;
 int zend_hash_destroy (int *) ;
 int zend_hash_init (int *,int,int *,int ,int) ;
 int zend_hash_init_ex (void*,int ,int *,int ,int,int ) ;
 int zend_parse_ini_file (TYPE_2__*,int,int ,int ,TYPE_4__*) ;
 int zend_stream_init_fp (TYPE_2__*,int ,char*) ;
 int zend_string_release (int *) ;

__attribute__((used)) static int browscap_read_file(char *filename, browser_data *browdata, int persistent)
{
 zend_file_handle fh;
 browscap_parser_ctx ctx = {0};

 if (filename == ((void*)0) || filename[0] == '\0') {
  return FAILURE;
 }

 zend_stream_init_fp(&fh, VCWD_FOPEN(filename, "r"), filename);
 if (!fh.handle.fp) {
  zend_error(E_CORE_WARNING, "Cannot open '%s' for reading", filename);
  return FAILURE;
 }

 browdata->htab = pemalloc(sizeof *browdata->htab, persistent);
 zend_hash_init_ex(browdata->htab, 0, ((void*)0),
  persistent ? browscap_entry_dtor_persistent : browscap_entry_dtor, persistent, 0);

 browdata->kv_size = 16 * 1024;
 browdata->kv_used = 0;
 browdata->kv = pemalloc(sizeof(browscap_kv) * browdata->kv_size, persistent);


 ctx.bdata = browdata;
 ctx.current_entry = ((void*)0);
 ctx.current_section_name = ((void*)0);
 zend_hash_init(&ctx.str_interned, 8, ((void*)0), str_interned_dtor, persistent);

 zend_parse_ini_file(&fh, 1, ZEND_INI_SCANNER_RAW,
   (zend_ini_parser_cb_t) php_browscap_parser_cb, &ctx);


 if (ctx.current_section_name) {
  zend_string_release(ctx.current_section_name);
 }
 zend_hash_destroy(&ctx.str_interned);

 return SUCCESS;
}
