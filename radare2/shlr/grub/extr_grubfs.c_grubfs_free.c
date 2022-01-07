
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* file; TYPE_1__* device; } ;
struct TYPE_5__ {TYPE_2__* disk; } ;
typedef TYPE_2__ GrubFS ;


 int free (TYPE_2__*) ;

void grubfs_free (GrubFS *gf) {
 if (gf) {
  if (gf->file && gf->file->device) {
   free (gf->file->device->disk);
  }

  free (gf->file);
  free (gf);
 }
}
