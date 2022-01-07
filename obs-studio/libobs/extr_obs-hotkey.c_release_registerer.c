
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int registerer_type; int * registerer; } ;
typedef TYPE_1__ obs_hotkey_t ;







 int obs_weak_encoder_release (int *) ;
 int obs_weak_output_release (int *) ;
 int obs_weak_service_release (int *) ;
 int obs_weak_source_release (int *) ;

__attribute__((used)) static void release_registerer(obs_hotkey_t *hotkey)
{
 switch (hotkey->registerer_type) {
 case 131:
  break;

 case 132:
  obs_weak_encoder_release(hotkey->registerer);
  break;

 case 130:
  obs_weak_output_release(hotkey->registerer);
  break;

 case 129:
  obs_weak_service_release(hotkey->registerer);
  break;

 case 128:
  obs_weak_source_release(hotkey->registerer);
  break;
 }

 hotkey->registerer = ((void*)0);
}
