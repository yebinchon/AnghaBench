
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sdlPtr ;
typedef int * sdlFunctionPtr ;
struct TYPE_3__ {int * requests; int functions; } ;


 int efree (char*) ;
 char* estrndup (char const*,int) ;
 int php_strtolower (char*,int) ;
 int strlen (char const*) ;
 int * zend_hash_str_find_ptr (int *,char*,int) ;

__attribute__((used)) static sdlFunctionPtr get_function(sdlPtr sdl, const char *function_name)
{
 sdlFunctionPtr tmp;

 int len = strlen(function_name);
 char *str = estrndup(function_name,len);
 php_strtolower(str,len);
 if (sdl != ((void*)0)) {
  if ((tmp = zend_hash_str_find_ptr(&sdl->functions, str, len)) != ((void*)0)) {
   efree(str);
   return tmp;
  } else if (sdl->requests != ((void*)0) && (tmp = zend_hash_str_find_ptr(sdl->requests, str, len)) != ((void*)0)) {
   efree(str);
   return tmp;
  }
 }
 efree(str);
 return ((void*)0);
}
