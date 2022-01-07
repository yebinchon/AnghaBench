
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef int DBState ;
typedef TYPE_1__ ControlFileData ;


 int _ (char*) ;
 int exit (int) ;
 TYPE_1__* get_controlfile (int ,int*) ;
 int pfree (TYPE_1__*) ;
 int pg_data ;
 int progname ;
 int write_stderr (int ,int ) ;

__attribute__((used)) static DBState
get_control_dbstate(void)
{
 DBState ret;
 bool crc_ok;
 ControlFileData *control_file_data = get_controlfile(pg_data, &crc_ok);

 if (!crc_ok)
 {
  write_stderr(_("%s: control file appears to be corrupt\n"), progname);
  exit(1);
 }

 ret = control_file_data->state;
 pfree(control_file_data);
 return ret;
}
