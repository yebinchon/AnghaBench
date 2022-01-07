
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nodes; } ;
typedef TYPE_1__ FONSatlas ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void fons__deleteAtlas(FONSatlas* atlas)
{
 if (atlas == ((void*)0)) return;
 if (atlas->nodes != ((void*)0)) free(atlas->nodes);
 free(atlas);
}
