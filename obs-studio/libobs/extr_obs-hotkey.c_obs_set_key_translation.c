
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t obs_key_t ;
struct TYPE_3__ {int ** translations; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 int bfree (int *) ;
 int * bstrdup (char const*) ;
 TYPE_2__* obs ;

__attribute__((used)) static void obs_set_key_translation(obs_key_t key, const char *translation)
{
 bfree(obs->hotkeys.translations[key]);
 obs->hotkeys.translations[key] = ((void*)0);

 if (translation)
  obs->hotkeys.translations[key] = bstrdup(translation);
}
