
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int server_version; int server_name; } ;
typedef TYPE_1__ pa_server_info ;
typedef void pa_context ;


 int LOG_INFO ;
 int UNUSED_PARAMETER (void*) ;
 int blog (int ,char*,int ,int ) ;
 int pulseaudio_signal (int ) ;

__attribute__((used)) static void pulseaudio_server_info(pa_context *c, const pa_server_info *i,
       void *userdata)
{
 UNUSED_PARAMETER(c);
 UNUSED_PARAMETER(userdata);

 blog(LOG_INFO, "Server name: '%s %s'", i->server_name,
      i->server_version);

 pulseaudio_signal(0);
}
