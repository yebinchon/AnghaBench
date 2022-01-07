
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ VARTYPE ;
struct TYPE_2__ {char const* name; scalar_t__ vt; } ;


 TYPE_1__* vt_names ;

__attribute__((used)) static inline const char *vt_to_string(VARTYPE vt)
{
 int i;
 for (i = 0; vt_names[i].name != ((void*)0); i++) {
  if (vt_names[i].vt == vt)
   return vt_names[i].name;
 }
 return "?";
}
