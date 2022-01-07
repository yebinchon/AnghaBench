
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* num; } ;
struct TYPE_4__ {int value; } ;
typedef TYPE_2__ RCore ;


 int eprintf (char*) ;

__attribute__((used)) static void cmd_write_fail(RCore *core) {
 eprintf ("Failed to write\n");
 core->num->value = 1;
}
