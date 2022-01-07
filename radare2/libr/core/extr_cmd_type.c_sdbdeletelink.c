
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* anal; } ;
struct TYPE_3__ {int sdb_types; } ;
typedef TYPE_2__ RCore ;


 int r_type_del (int ,char const*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static int sdbdeletelink(void *p, const char *k, const char *v) {
 RCore *core = (RCore *)p;
 if (!strncmp (k, "link.", strlen ("link."))) {
  r_type_del (core->anal->sdb_types, k);
 }
 return 1;
}
