
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {int image_base; } ;
struct TYPE_9__ {TYPE_2__ art; } ;
struct TYPE_8__ {TYPE_1__* o; } ;
struct TYPE_6__ {TYPE_4__* bin_obj; } ;
typedef TYPE_3__ RBinFile ;
typedef TYPE_4__ ArtObj ;



__attribute__((used)) static ut64 baddr(RBinFile *bf) {
 ArtObj *ao = bf->o->bin_obj;
 return ao? ao->art.image_base: 0;
}
