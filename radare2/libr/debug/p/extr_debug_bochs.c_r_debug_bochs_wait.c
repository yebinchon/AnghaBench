
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef int RDebug ;


 int bBreak ;
 int bStep ;
 int bochs_debug_break ;
 int bochs_wait (TYPE_1__*) ;
 TYPE_1__* desc ;
 int eprintf (char*,...) ;
 int isBochs (int *) ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int ,int *) ;
 scalar_t__ r_num_get (int *,char*) ;
 scalar_t__ ripStop ;
 int strncpy (char*,char*,int) ;
 void* strstr (char const*,char*) ;

__attribute__((used)) static int r_debug_bochs_wait(RDebug *dbg, int pid) {
 if (!isBochs (dbg)) {
  return 0;
 }
 char strIP[19];
 int i = 0;
 const char *x;
 char *ini = 0, *fin = 0;



 if (bStep) {
  bStep = 0;
 } else {
  r_cons_break_push (bochs_debug_break, dbg);
  i = 500;
  do {
   bochs_wait (desc);
   if (bBreak) {
    if (desc->data[0]) {
     eprintf ("ctrl+c %s\n", desc->data);
     bBreak = 0;
     break;
    }
    i--;
    if (!i) {
     bBreak = 0;
     eprintf ("empty ctrl+c.\n");
     break;
    }
   } else if (desc->data[0]) {

    break;
   }
  } while(1);
  r_cons_break_pop ();
 }



 ripStop = 0;
 if ((x = strstr (desc->data, "Next at"))) {
  if ((ini = strstr (x, "[0x"))) {
   if ((fin = strstr (ini,"]"))) {
    int len = fin - ini - 1;
    strncpy (strIP, ini+1, len);
    strIP[len] = 0;

    ripStop = r_num_get (((void*)0), strIP);
   }
  }
 }
 desc->data[0] = 0;

 return 1;
}
