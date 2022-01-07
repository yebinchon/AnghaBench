
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {int ra; int log; } ;
struct bstr {int dummy; } ;


 int add_user_hook ;
 int add_user_tex ;
 struct bstr load_cached_file (struct gl_video*,char*) ;
 int parse_user_shader (int ,int ,struct bstr,struct gl_video*,int ,int ) ;

__attribute__((used)) static void load_user_shaders(struct gl_video *p, char **shaders)
{
    if (!shaders)
        return;

    for (int n = 0; shaders[n] != ((void*)0); n++) {
        struct bstr file = load_cached_file(p, shaders[n]);
        parse_user_shader(p->log, p->ra, file, p, add_user_hook, add_user_tex);
    }
}
