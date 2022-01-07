
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ inifile ;


 int E_WARNING ;
 int FAILURE ;
 int SEEK_SET ;
 int SUCCESS ;
 int php_error_docref (int *,int ,char*,int) ;
 int php_stream_seek (int ,size_t,int ) ;
 int php_stream_truncate_set_size (int ,size_t) ;

__attribute__((used)) static int inifile_truncate(inifile *dba, size_t size)
{
 int res;

 if ((res=php_stream_truncate_set_size(dba->fp, size)) != 0) {
  php_error_docref(((void*)0), E_WARNING, "Error in ftruncate: %d", res);
  return FAILURE;
 }
 php_stream_seek(dba->fp, size, SEEK_SET);
 return SUCCESS;
}
