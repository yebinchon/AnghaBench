
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* print; } ;
struct TYPE_4__ {int lines_cache_sz; int lines_cache; } ;
typedef TYPE_2__ RCore ;


 int R_FREE (int ) ;

__attribute__((used)) static void __clean_lines_cache(RCore *core) {
 core->print->lines_cache_sz = -1;
 R_FREE (core->print->lines_cache);
}
