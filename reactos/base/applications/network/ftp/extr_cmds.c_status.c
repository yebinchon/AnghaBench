
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mac_name; } ;


 int bell ;
 scalar_t__ code ;
 scalar_t__ connected ;
 int crflag ;
 int doglob ;
 int fflush (int ) ;
 char* formname ;
 int hash ;
 char* hostname ;
 int interactive ;
 int macnum ;
 TYPE_1__* macros ;
 scalar_t__ mapflag ;
 char* mapin ;
 char* mapout ;
 int mcase ;
 char* modename ;
 scalar_t__ ntflag ;
 char* ntin ;
 char* ntout ;
 char* onoff (int ) ;
 int printf (char*,...) ;
 int proxy ;
 int pswitch (int) ;
 int runique ;
 int sendport ;
 int stdout ;
 char* structname ;
 int sunique ;
 char* typename ;
 int verbose ;

void status(int argc, const char *argv[])
{
 int i;

 if (connected)
  printf("Connected to %s.\n", hostname);
 else
  printf("Not connected.\n");
 if (!proxy) {
  pswitch(1);
  if (connected) {
   printf("Connected for proxy commands to %s.\n", hostname);
  }
  else {
   printf("No proxy connection.\n");
  }
  pswitch(0);
 }
 printf("Mode: %s; Type: %s; Form: %s; Structure: %s\n",
  modename, typename, formname, structname);
 printf("Verbose: %s; Bell: %s; Prompting: %s; Globbing: %s\n",
  onoff(verbose), onoff(bell), onoff(interactive),
  onoff(doglob));
 printf("Store unique: %s; Receive unique: %s\n", onoff(sunique),
  onoff(runique));
 printf("Case: %s; CR stripping: %s\n",onoff(mcase),onoff(crflag));
 if (ntflag) {
  printf("Ntrans: (in) %s (out) %s\n", ntin,ntout);
 }
 else {
  printf("Ntrans: off\n");
 }
 if (mapflag) {
  printf("Nmap: (in) %s (out) %s\n", mapin, mapout);
 }
 else {
  printf("Nmap: off\n");
 }
 printf("Hash mark printing: %s; Use of PORT cmds: %s\n",
  onoff(hash), onoff(sendport));
 if (macnum > 0) {
  printf("Macros:\n");
  for (i=0; i<macnum; i++) {
   printf("\t%s\n",macros[i].mac_name);
  }
 }
 (void) fflush(stdout);
 code = 0;
}
