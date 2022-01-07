
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nargs; int callname; } ;
struct TYPE_5__ {TYPE_1__ lang; } ;
typedef TYPE_2__ REgg ;


 int R_FREE (int ) ;

__attribute__((used)) static void rcc_reset_callname(REgg *egg) {
 R_FREE (egg->lang.callname);
 egg->lang.nargs = 0;
}
