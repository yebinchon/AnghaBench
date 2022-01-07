
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cur; scalar_t__ file; } ;
struct TYPE_4__ {scalar_t__ xtr_obj; scalar_t__ file; } ;
typedef TYPE_2__ RBin ;



__attribute__((used)) static bool load(RBin *bin) {
 if (!bin || !bin->cur) {
     return 0;
 }
 if (!bin->file) {
     bin->file = bin->cur->file;
 }
 return bin->cur->xtr_obj? 1 : 0;
}
