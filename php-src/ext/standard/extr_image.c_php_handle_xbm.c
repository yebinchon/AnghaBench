
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {int dummy; } ;
typedef int php_stream ;


 int php_get_xbm (int *,struct gfxinfo**) ;

__attribute__((used)) static struct gfxinfo *php_handle_xbm(php_stream * stream)
{
 struct gfxinfo *result;
 php_get_xbm(stream, &result);
 return result;
}
