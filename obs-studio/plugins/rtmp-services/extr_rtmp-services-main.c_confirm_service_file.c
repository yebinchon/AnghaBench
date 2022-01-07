
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ array; } ;
struct file_download_data {TYPE_1__ buffer; int name; } ;
typedef int obs_data_t ;


 int RTMP_SERVICES_FORMAT_VERSION ;
 int UNUSED_PARAMETER (void*) ;
 scalar_t__ astrcmpi (int ,char*) ;
 int * obs_data_create_from_json (char*) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int obs_data_release (int *) ;

__attribute__((used)) static bool confirm_service_file(void *param, struct file_download_data *file)
{
 if (astrcmpi(file->name, "services.json") == 0) {
  obs_data_t *data;
  int format_version;

  data = obs_data_create_from_json((char *)file->buffer.array);
  if (!data)
   return 0;

  format_version = (int)obs_data_get_int(data, "format_version");
  obs_data_release(data);

  if (format_version != RTMP_SERVICES_FORMAT_VERSION)
   return 0;
 }

 UNUSED_PARAMETER(param);
 return 1;
}
