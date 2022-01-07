
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pushargs; int callname; scalar_t__ nargs; } ;
struct TYPE_5__ {TYPE_1__ lang; } ;
typedef TYPE_2__ REgg ;


 int R_FREE (int ) ;
 int skipspaces (char const*) ;
 int strcmp (char const*,char*) ;
 int strdup (int ) ;
 int trim (int ) ;

__attribute__((used)) static void rcc_set_callname(REgg *egg, const char *s) {
 R_FREE (egg->lang.callname);
 egg->lang.nargs = 0;
 egg->lang.callname = trim (strdup (skipspaces (s)));
 egg->lang.pushargs = !((!strcmp (s, "goto")) || (!strcmp (s, "break")));
}
