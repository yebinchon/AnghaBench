
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ anticheat_hook; } ;
struct game_capture {int is_app; TYPE_1__ config; } ;



__attribute__((used)) static inline bool use_anticheat(struct game_capture *gc)
{
 return gc->config.anticheat_hook && !gc->is_app;
}
