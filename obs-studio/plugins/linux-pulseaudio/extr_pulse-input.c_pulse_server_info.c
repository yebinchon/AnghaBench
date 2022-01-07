
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* default_source_name; char* default_sink_name; int server_version; int server_name; } ;
typedef TYPE_1__ pa_server_info ;
typedef int pa_context ;
struct TYPE_5__ {char* device; scalar_t__ input; } ;


 int LOG_DEBUG ;
 int LOG_INFO ;
 int PULSE_DATA (void*) ;
 int UNUSED_PARAMETER (int *) ;
 int bfree (char*) ;
 int blog (int ,char*,char*,...) ;
 void* bstrdup (char*) ;
 char* bzalloc (scalar_t__) ;
 TYPE_3__* data ;
 int pulse_signal (int ) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void pulse_server_info(pa_context *c, const pa_server_info *i,
         void *userdata)
{
 UNUSED_PARAMETER(c);
 PULSE_DATA(userdata);

 blog(LOG_INFO, "Server name: '%s %s'", i->server_name,
      i->server_version);

 if (data->device && strcmp("default", data->device) == 0) {
  if (data->input) {
   bfree(data->device);
   data->device = bstrdup(i->default_source_name);

   blog(LOG_DEBUG, "Default input device: '%s'",
        data->device);
  } else {
   char *monitor =
    bzalloc(strlen(i->default_sink_name) + 9);
   strcat(monitor, i->default_sink_name);
   strcat(monitor, ".monitor");

   bfree(data->device);
   data->device = bstrdup(monitor);

   blog(LOG_DEBUG, "Default output device: '%s'",
        data->device);
   bfree(monitor);
  }
 }

 pulse_signal(0);
}
