
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gs_end_scene () ;

__attribute__((used)) static inline void render_display_end()
{
 gs_end_scene();
}
