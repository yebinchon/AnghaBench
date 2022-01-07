
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
typedef TYPE_1__ RAGraph ;


 scalar_t__ R_AGRAPH_MODE_MINI ;

__attribute__((used)) static bool is_mini(const RAGraph *g) {
 return g->mode == R_AGRAPH_MODE_MINI;
}
