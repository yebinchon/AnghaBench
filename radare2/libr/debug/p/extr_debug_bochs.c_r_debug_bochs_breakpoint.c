
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
typedef int bufcmd ;
struct TYPE_6__ {char* data; } ;
struct TYPE_5__ {int addr; } ;
typedef TYPE_1__ RBreakpointItem ;
typedef int RBreakpoint ;


 int bCapturaRegs ;
 int bochs_send_cmd (TYPE_3__*,char*,int) ;
 TYPE_3__* desc ;
 void* r_num_get (int *,char*) ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int r_debug_bochs_breakpoint (RBreakpoint *bp, RBreakpointItem *b, bool set) {
 char cmd[64];
 char num[4];
 char addr[19];
 char bufcmd[100];
 ut64 a;
 int n,i,lenRec;

 if (!b) {
  return 0;
 }
 if (set) {

  sprintf (cmd, "lb 0x%x", (ut32)b->addr);
  bochs_send_cmd (desc, cmd, 1);
  bCapturaRegs = 1;
 } else {







  bochs_send_cmd (desc,"blist",1);
  lenRec = strlen (desc->data);
  a = -1;
  n = 0;
  if (!strncmp (desc->data, "Num Type", 8)) {
   i = 37;
   do {
    if (desc->data[i + 24] == 'y') {
     strncpy(num, &desc->data[i], 3);
     num[3] = 0;
     strncpy(addr, &desc->data[i + 28], 18);
     addr[18] = 0;
     n = r_num_get (((void*)0),num);
     a = r_num_get (((void*)0),addr);

     if (a == b->addr) {
      break;
     }
    }
    i += 48;
   } while (desc->data[i] != '<' && i<lenRec-4);
  }
  if (a == b->addr) {
   snprintf (bufcmd, sizeof (bufcmd), "d %i", n);

   bochs_send_cmd (desc, bufcmd, 1);
  }

 }
 return 1;
}
