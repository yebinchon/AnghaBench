
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct enum_cb {int data; scalar_t__ (* cb ) (int ,int ,int ) ;scalar_t__ cont; } ;
struct TYPE_3__ {scalar_t__ monitor_of_sink; int name; int description; } ;
typedef TYPE_1__ pa_source_info ;
typedef int pa_context ;


 scalar_t__ PA_INVALID_INDEX ;
 int UNUSED_PARAMETER (int *) ;
 int pulseaudio_signal (int ) ;
 scalar_t__ stub1 (int ,int ,int ) ;

__attribute__((used)) static void pulseaudio_output_info(pa_context *c, const pa_source_info *i,
       int eol, void *userdata)
{
 UNUSED_PARAMETER(c);
 if (eol != 0 || i->monitor_of_sink == PA_INVALID_INDEX)
  goto skip;

 struct enum_cb *ecb = (struct enum_cb *)userdata;
 if (ecb->cont)
  ecb->cont = ecb->cb(ecb->data, i->description, i->name);

skip:
 pulseaudio_signal(0);
}
