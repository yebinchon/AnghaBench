
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* registers; } ;
typedef TYPE_2__ libqnxr_t ;
struct TYPE_5__ {scalar_t__ size; int name; } ;


 int eprintf (char*,char const*) ;
 int qnxr_write_register (TYPE_2__*,int,char*,int) ;
 int strcmp (int ,char const*) ;

int qnxr_write_reg (libqnxr_t *g, const char *name, char *value, int len) {
 int i = 0;

 if (!g) return -1;

 while (g->registers[i].size > 0) {
  if (!strcmp (g->registers[i].name, name)) {
   break;
  }
  i++;
 }
 if (g->registers[i].size == 0) {
  eprintf ("Error registername <%s> not found in profile\n", name);
  return -1;
 }
 qnxr_write_register (g, i, value, len);

 return 0;
}
