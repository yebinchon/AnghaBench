
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; int cnodes; scalar_t__ nnodes; struct TYPE_6__* nodes; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ FONSatlasNode ;
typedef TYPE_1__ FONSatlas ;


 int fons__deleteAtlas (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static FONSatlas* fons__allocAtlas(int w, int h, int nnodes)
{
 FONSatlas* atlas = ((void*)0);


 atlas = (FONSatlas*)malloc(sizeof(FONSatlas));
 if (atlas == ((void*)0)) goto error;
 memset(atlas, 0, sizeof(FONSatlas));

 atlas->width = w;
 atlas->height = h;


 atlas->nodes = (FONSatlasNode*)malloc(sizeof(FONSatlasNode) * nnodes);
 if (atlas->nodes == ((void*)0)) goto error;
 memset(atlas->nodes, 0, sizeof(FONSatlasNode) * nnodes);
 atlas->nnodes = 0;
 atlas->cnodes = nnodes;


 atlas->nodes[0].x = 0;
 atlas->nodes[0].y = 0;
 atlas->nodes[0].width = (short)w;
 atlas->nnodes++;

 return atlas;

error:
 if (atlas) fons__deleteAtlas(atlas);
 return ((void*)0);
}
