
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_18__ {char* value; } ;
typedef TYPE_1__ val_type ;
typedef int php_stream ;
struct TYPE_19__ {scalar_t__ name; scalar_t__ group; } ;
typedef TYPE_2__ key_type ;
struct TYPE_20__ {int * fp; } ;
typedef TYPE_3__ inifile ;


 int E_WARNING ;
 int FAILURE ;
 int PHP_STREAM_COPY_ALL ;
 int SEEK_END ;
 int SEEK_SET ;
 int SUCCESS ;
 int assert (int) ;
 int inifile_copy_to (TYPE_3__*,size_t,size_t,TYPE_3__**) ;
 int inifile_filter (TYPE_3__*,TYPE_3__*,TYPE_2__ const*,int *) ;
 int inifile_find_group (TYPE_3__*,TYPE_2__ const*,size_t*) ;
 int inifile_free (TYPE_3__*,int ) ;
 int inifile_next_group (TYPE_3__*,TYPE_2__ const*,size_t*) ;
 int inifile_truncate (TYPE_3__*,size_t) ;
 int php_error_docref (int *,int ,char*) ;
 int php_stream_close (int *) ;
 int php_stream_copy_to_stream_ex (int *,int *,int ,int *) ;
 int php_stream_flush (int *) ;
 int php_stream_printf (int *,char*,scalar_t__,...) ;
 int php_stream_seek (int *,size_t,int ) ;
 scalar_t__ php_stream_tell (int *) ;
 int * php_stream_temp_create (int ,int) ;
 scalar_t__ strlen (scalar_t__) ;
 int zend_throw_error (int *,char*) ;

__attribute__((used)) static int inifile_delete_replace_append(inifile *dba, const key_type *key, const val_type *value, int append, zend_bool *found)
{
 size_t pos_grp_start=0, pos_grp_next;
 inifile *ini_tmp = ((void*)0);
 php_stream *fp_tmp = ((void*)0);
 int ret;
 assert(!append || (key->name && value));


 inifile_find_group(dba, key, &pos_grp_start);
 inifile_next_group(dba, key, &pos_grp_next);
 if (append) {
  ret = SUCCESS;
 } else {
  ret = inifile_copy_to(dba, pos_grp_start, pos_grp_next, &ini_tmp);
 }


 if (ret == SUCCESS) {
  fp_tmp = php_stream_temp_create(0, 64 * 1024);
  if (!fp_tmp) {
   php_error_docref(((void*)0), E_WARNING, "Could not create temporary stream");
   ret = FAILURE;
  } else {
   php_stream_seek(dba->fp, 0, SEEK_END);
   if (pos_grp_next != (size_t)php_stream_tell(dba->fp)) {
    php_stream_seek(dba->fp, pos_grp_next, SEEK_SET);
    if (SUCCESS != php_stream_copy_to_stream_ex(dba->fp, fp_tmp, PHP_STREAM_COPY_ALL, ((void*)0))) {
     php_error_docref(((void*)0), E_WARNING, "Could not copy remainder to temporary stream");
     ret = FAILURE;
    }
   }
  }
 }


 if (ret == SUCCESS) {
  if (!value || (key->name && strlen(key->name))) {
   ret = inifile_truncate(dba, append ? pos_grp_next : pos_grp_start);
  }
 }

 if (ret == SUCCESS) {
  if (key->name && strlen(key->name)) {

   if (!append && ini_tmp) {
    ret = inifile_filter(dba, ini_tmp, key, found);
   }





   if (value) {
    if (pos_grp_start == pos_grp_next && key->group && strlen(key->group)) {
     php_stream_printf(dba->fp, "[%s]\n", key->group);
    }
    php_stream_printf(dba->fp, "%s=%s\n", key->name, value->value ? value->value : "");
   }
  }





  if (fp_tmp && php_stream_tell(fp_tmp)) {
   php_stream_seek(fp_tmp, 0, SEEK_SET);
   php_stream_seek(dba->fp, 0, SEEK_END);
   if (SUCCESS != php_stream_copy_to_stream_ex(fp_tmp, dba->fp, PHP_STREAM_COPY_ALL, ((void*)0))) {
    zend_throw_error(((void*)0), "Could not copy from temporary stream - ini file truncated");
    ret = FAILURE;
   }
  }
 }

 if (ini_tmp) {
  php_stream_close(ini_tmp->fp);
  inifile_free(ini_tmp, 0);
 }
 if (fp_tmp) {
  php_stream_close(fp_tmp);
 }
 php_stream_flush(dba->fp);
 php_stream_seek(dba->fp, 0, SEEK_SET);

 return ret;
}
