
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_1__ RBinElfSection ;
typedef TYPE_2__ ELFOBJ ;



__attribute__((used)) static bool sectionIsInvalid(ELFOBJ *bin, RBinElfSection *sect) {
 return (sect->offset + sect->size > bin->size);
}
