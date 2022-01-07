
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cpoints; int cpaths; int cverts; scalar_t__ nverts; int * verts; scalar_t__ npaths; int * paths; scalar_t__ npoints; int * points; } ;
typedef int NVGvertex ;
typedef int NVGpoint ;
typedef TYPE_1__ NVGpathCache ;
typedef int NVGpath ;


 int NVG_INIT_PATHS_SIZE ;
 int NVG_INIT_POINTS_SIZE ;
 int NVG_INIT_VERTS_SIZE ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int nvg__deletePathCache (TYPE_1__*) ;

__attribute__((used)) static NVGpathCache* nvg__allocPathCache(void)
{
 NVGpathCache* c = (NVGpathCache*)malloc(sizeof(NVGpathCache));
 if (c == ((void*)0)) goto error;
 memset(c, 0, sizeof(NVGpathCache));

 c->points = (NVGpoint*)malloc(sizeof(NVGpoint)*NVG_INIT_POINTS_SIZE);
 if (!c->points) goto error;
 c->npoints = 0;
 c->cpoints = NVG_INIT_POINTS_SIZE;

 c->paths = (NVGpath*)malloc(sizeof(NVGpath)*NVG_INIT_PATHS_SIZE);
 if (!c->paths) goto error;
 c->npaths = 0;
 c->cpaths = NVG_INIT_PATHS_SIZE;

 c->verts = (NVGvertex*)malloc(sizeof(NVGvertex)*NVG_INIT_VERTS_SIZE);
 if (!c->verts) goto error;
 c->nverts = 0;
 c->cverts = NVG_INIT_VERTS_SIZE;

 return c;
error:
 nvg__deletePathCache(c);
 return ((void*)0);
}
