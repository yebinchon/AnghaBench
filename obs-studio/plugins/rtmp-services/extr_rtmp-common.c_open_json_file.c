
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int text; int line; } ;
typedef TYPE_1__ json_error_t ;


 int JSON_REJECT_DUPLICATES ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 int RTMP_SERVICES_FORMAT_VERSION ;
 int bfree (char*) ;
 int blog (int ,char*,...) ;
 int get_int_val (int *,char*) ;
 int json_decref (int *) ;
 int json_incref (int *) ;
 int * json_loads (char*,int ,TYPE_1__*) ;
 int * json_object_get (int *,char*) ;
 char* os_quick_read_utf8_file (char const*) ;

__attribute__((used)) static json_t *open_json_file(const char *file)
{
 char *file_data = os_quick_read_utf8_file(file);
 json_error_t error;
 json_t *root;
 json_t *list;
 int format_ver;

 if (!file_data)
  return ((void*)0);

 root = json_loads(file_data, JSON_REJECT_DUPLICATES, &error);
 bfree(file_data);

 if (!root) {
  blog(LOG_WARNING,
       "rtmp-common.c: [open_json_file] "
       "Error reading JSON file (%d): %s",
       error.line, error.text);
  return ((void*)0);
 }

 format_ver = get_int_val(root, "format_version");

 if (format_ver != RTMP_SERVICES_FORMAT_VERSION) {
  blog(LOG_DEBUG,
       "rtmp-common.c: [open_json_file] "
       "Wrong format version (%d), expected %d",
       format_ver, RTMP_SERVICES_FORMAT_VERSION);
  json_decref(root);
  return ((void*)0);
 }

 list = json_object_get(root, "services");
 if (list)
  json_incref(list);
 json_decref(root);

 if (!list) {
  blog(LOG_WARNING, "rtmp-common.c: [open_json_file] "
      "No services list");
  return ((void*)0);
 }

 return list;
}
