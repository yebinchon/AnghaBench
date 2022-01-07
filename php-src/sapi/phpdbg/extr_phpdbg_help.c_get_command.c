
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const alias; scalar_t__ name; } ;
typedef TYPE_1__ phpdbg_command_t ;


 int strncmp (scalar_t__,char const*,size_t) ;

__attribute__((used)) static int get_command(
 const char *key, size_t len,
 phpdbg_command_t const **command,
 phpdbg_command_t const * commands
 )
{
 const phpdbg_command_t *c;
 unsigned int num_matches = 0;

 if (len == 1) {
  for (c=commands; c->name; c++) {
   if (c->alias == key[0]) {
    num_matches++;
    if ( num_matches == 1 && command) {
     *command = c;
    }
   }
  }
 } else {
  for (c=commands; c->name; c++) {
   if (!strncmp(c->name, key, len)) {
    ++num_matches;
    if ( num_matches == 1 && command) {
     *command = c;
    }
   }
  }
 }

 return num_matches;

}
