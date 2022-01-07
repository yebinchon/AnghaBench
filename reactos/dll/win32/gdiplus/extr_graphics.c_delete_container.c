
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clip; } ;
typedef TYPE_1__ GraphicsContainerItem ;


 int GdipDeleteRegion (int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void delete_container(GraphicsContainerItem* container)
{
    GdipDeleteRegion(container->clip);
    heap_free(container);
}
