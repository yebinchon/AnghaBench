
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbrp_node ;
struct TYPE_3__ {int width; int height; scalar_t__ bottom_y; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ stbrp_context ;


 int STBTT__NOTUSED (int) ;

__attribute__((used)) static void stbrp_init_target(stbrp_context *con, int pw, int ph, stbrp_node *nodes, int num_nodes)
{
   con->width = pw;
   con->height = ph;
   con->x = 0;
   con->y = 0;
   con->bottom_y = 0;
   STBTT__NOTUSED(nodes);
   STBTT__NOTUSED(num_nodes);
}
