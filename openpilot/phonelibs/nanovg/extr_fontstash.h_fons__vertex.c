
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* verts; int nverts; float* tcoords; unsigned int* colors; } ;
typedef TYPE_1__ FONScontext ;



__attribute__((used)) static __inline void fons__vertex(FONScontext* stash, float x, float y, float s, float t, unsigned int c)
{
 stash->verts[stash->nverts*2+0] = x;
 stash->verts[stash->nverts*2+1] = y;
 stash->tcoords[stash->nverts*2+0] = s;
 stash->tcoords[stash->nverts*2+1] = t;
 stash->colors[stash->nverts] = c;
 stash->nverts++;
}
