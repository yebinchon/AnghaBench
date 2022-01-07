
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ e_ident; } ;
struct TYPE_5__ {TYPE_1__ ehdr; } ;
typedef TYPE_2__ ELFOBJ ;


 int CGCMAG ;
 int ELFMAG ;
 int SCGCMAG ;
 int SELFMAG ;
 int strncmp (char*,int ,int ) ;

__attribute__((used)) static bool __is_valid_ident(ELFOBJ *bin) {
 return !strncmp ((char *)bin->ehdr.e_ident, ELFMAG, SELFMAG) ||
  !strncmp ((char *)bin->ehdr.e_ident, CGCMAG, SCGCMAG);
}
