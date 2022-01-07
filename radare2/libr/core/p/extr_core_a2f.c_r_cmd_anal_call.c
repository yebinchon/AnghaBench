
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ RCore ;


 int analyzeFunction (TYPE_1__*,int ) ;
 int eprintf (char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int r_cmd_anal_call(void *user, const char *input) {
 RCore *core = (RCore *) user;
 if (!strncmp (input, "a2", 2)) {
  switch (input[2]) {
  case 'f':
   if (!analyzeFunction (core, core->offset)) {
    eprintf ("a2f: Failed to analyze function.\n");
   }
   break;
  default:
   eprintf ("Usage: a2f\n");
   eprintf ("a2f is the new (experimental) analysis engine\n");
   eprintf ("Use with caution.\n");
   break;
  }
  return 1;
 }
 return 0;
}
