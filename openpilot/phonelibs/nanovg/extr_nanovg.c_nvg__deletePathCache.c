
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* verts; struct TYPE_4__* paths; struct TYPE_4__* points; } ;
typedef TYPE_1__ NVGpathCache ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void nvg__deletePathCache(NVGpathCache* c)
{
 if (c == ((void*)0)) return;
 if (c->points != ((void*)0)) free(c->points);
 if (c->paths != ((void*)0)) free(c->paths);
 if (c->verts != ((void*)0)) free(c->verts);
 free(c);
}
