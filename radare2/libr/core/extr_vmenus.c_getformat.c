
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* core; } ;
struct TYPE_6__ {TYPE_1__* anal; } ;
struct TYPE_5__ {int sdb_types; } ;
typedef TYPE_3__ RCoreVisualTypes ;


 int sdb_fmt (char*,char const*) ;
 char* sdb_get (int ,int ,int ) ;

__attribute__((used)) static inline char *getformat (RCoreVisualTypes *vt, const char *k) {
 return sdb_get (vt->core->anal->sdb_types,
  sdb_fmt ("type.%s", k), 0);
}
