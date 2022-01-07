
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int php_stream ;
struct TYPE_5__ {int readonly; int * fp; } ;
typedef TYPE_1__ inifile ;


 int E_WARNING ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* pemalloc (int,int) ;
 int php_error_docref (int *,int ,char*) ;
 int php_stream_truncate_supported (int *) ;

inifile * inifile_alloc(php_stream *fp, int readonly, int persistent)
{
 inifile *dba;

 if (!readonly) {
  if (!php_stream_truncate_supported(fp)) {
   php_error_docref(((void*)0), E_WARNING, "Can't truncate this stream");
   return ((void*)0);
  }
 }

 dba = pemalloc(sizeof(inifile), persistent);
 memset(dba, 0, sizeof(inifile));
 dba->fp = fp;
 dba->readonly = readonly;
 return dba;
}
