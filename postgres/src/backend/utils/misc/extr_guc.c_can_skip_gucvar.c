
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {scalar_t__ context; scalar_t__ source; int name; } ;


 scalar_t__ PGC_INTERNAL ;
 scalar_t__ PGC_POSTMASTER ;
 scalar_t__ PGC_S_DEFAULT ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool
can_skip_gucvar(struct config_generic *gconf)
{
 return gconf->context == PGC_POSTMASTER ||
  gconf->context == PGC_INTERNAL || gconf->source == PGC_S_DEFAULT ||
  strcmp(gconf->name, "role") == 0;
}
