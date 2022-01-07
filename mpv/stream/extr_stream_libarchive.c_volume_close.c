
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_archive_volume {int * src; TYPE_1__* mpa; } ;
struct TYPE_2__ {int * primary_src; } ;


 int free_stream (int *) ;

__attribute__((used)) static void volume_close(struct mp_archive_volume *vol)
{

    if (vol->src && vol->src != vol->mpa->primary_src) {
        free_stream(vol->src);
        vol->src = ((void*)0);
    }
}
