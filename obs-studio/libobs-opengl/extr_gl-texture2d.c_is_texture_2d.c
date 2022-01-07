
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ gs_texture_t ;


 scalar_t__ GS_TEXTURE_2D ;
 int LOG_ERROR ;
 int blog (int ,char*,char const*) ;

__attribute__((used)) static inline bool is_texture_2d(const gs_texture_t *tex, const char *func)
{
 bool is_tex2d = tex->type == GS_TEXTURE_2D;
 if (!is_tex2d)
  blog(LOG_ERROR, "%s (GL) failed:  Not a 2D texture", func);
 return is_tex2d;
}
