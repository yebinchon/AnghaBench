
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e_type; } ;
struct TYPE_5__ {TYPE_1__ ehdr; } ;
typedef TYPE_2__ ELFOBJ ;





__attribute__((used)) static bool isExecutable(ELFOBJ *bin) {
 switch (bin->ehdr.e_type) {
 case 128: return 1;
 case 129: return 1;
 }
 return 0;
}
