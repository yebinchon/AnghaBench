
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ gs_texture_t ;


 scalar_t__ GS_TEXTURE_CUBE ;
 int LOG_ERROR ;
 int blog (int ,char*,char const*) ;

__attribute__((used)) static inline bool is_texture_cube(const gs_texture_t *tex, const char *func)
{
 bool is_texcube = tex->type == GS_TEXTURE_CUBE;
 if (!is_texcube)
  blog(LOG_ERROR, "%s (GL) failed:  Not a cubemap texture", func);
 return is_texcube;
}
