
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {int dummy; } ;
typedef int php_stream ;


 scalar_t__ ecalloc (int,int) ;
 int efree (struct gfxinfo*) ;
 int php_get_wbmp (int *,struct gfxinfo**,int ) ;

__attribute__((used)) static struct gfxinfo *php_handle_wbmp(php_stream * stream)
{
 struct gfxinfo *result = (struct gfxinfo *) ecalloc(1, sizeof(struct gfxinfo));

 if (!php_get_wbmp(stream, &result, 0)) {
  efree(result);
  return ((void*)0);
 }

 return result;
}
