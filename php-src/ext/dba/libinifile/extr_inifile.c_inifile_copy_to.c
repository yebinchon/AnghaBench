
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int php_stream ;
struct TYPE_5__ {int fp; } ;
typedef TYPE_1__ inifile ;


 int E_WARNING ;
 int FAILURE ;
 int SEEK_SET ;
 int SUCCESS ;
 TYPE_1__* inifile_alloc (int *,int,int ) ;
 int php_error_docref (int *,int ,char*,...) ;
 int php_stream_copy_to_stream_ex (int ,int *,size_t,int *) ;
 int php_stream_seek (int ,size_t,int ) ;
 int * php_stream_temp_create (int ,int) ;

__attribute__((used)) static int inifile_copy_to(inifile *dba, size_t pos_start, size_t pos_end, inifile **ini_copy)
{
 php_stream *fp;

 if (pos_start == pos_end) {
  *ini_copy = ((void*)0);
  return SUCCESS;
 }
 if ((fp = php_stream_temp_create(0, 64 * 1024)) == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "Could not create temporary stream");
  *ini_copy = ((void*)0);
  return FAILURE;
 }

 if ((*ini_copy = inifile_alloc(fp, 1, 0)) == ((void*)0)) {

  return FAILURE;
 }
 php_stream_seek(dba->fp, pos_start, SEEK_SET);
 if (SUCCESS != php_stream_copy_to_stream_ex(dba->fp, fp, pos_end - pos_start, ((void*)0))) {
  php_error_docref(((void*)0), E_WARNING, "Could not copy group [%zu - %zu] to temporary stream", pos_start, pos_end);
  return FAILURE;
 }
 return SUCCESS;
}
