
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_opts {scalar_t__ use_media_keys; scalar_t__ use_appleremote; } ;
struct input_ctx {int using_ar; int using_cocoa_media_keys; struct input_opts* opts; int opts_cache; } ;


 int cocoa_init_apple_remote () ;
 int cocoa_init_media_keys () ;
 int cocoa_uninit_apple_remote () ;
 int cocoa_uninit_media_keys () ;
 int m_config_cache_update (int ) ;

__attribute__((used)) static void reload_opts(struct input_ctx *ictx, bool shutdown)
{
    m_config_cache_update(ictx->opts_cache);
}
