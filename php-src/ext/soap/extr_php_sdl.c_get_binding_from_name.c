
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int s; int member_0; } ;
typedef TYPE_1__ smart_str ;
typedef TYPE_2__* sdlPtr ;
typedef int sdlBindingPtr ;
struct TYPE_9__ {int bindings; } ;


 int smart_str_0 (TYPE_1__*) ;
 int smart_str_appendc (TYPE_1__*,char) ;
 int smart_str_appends (TYPE_1__*,char*) ;
 int smart_str_free (TYPE_1__*) ;
 int zend_hash_find_ptr (int ,int ) ;

sdlBindingPtr get_binding_from_name(sdlPtr sdl, char *name, char *ns)
{
 sdlBindingPtr binding;
 smart_str key = {0};

 smart_str_appends(&key, ns);
 smart_str_appendc(&key, ':');
 smart_str_appends(&key, name);
 smart_str_0(&key);

 binding = zend_hash_find_ptr(sdl->bindings, key.s);

 smart_str_free(&key);
 return binding;
}
