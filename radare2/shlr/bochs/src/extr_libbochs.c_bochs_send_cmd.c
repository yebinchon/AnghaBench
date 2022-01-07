
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hWritePipeOut; } ;
typedef TYPE_1__ libbochs_t ;
typedef int DWORD ;


 int WriteFile (int ,char*,size_t,int *,int *) ;
 int bochs_reset_buffer (TYPE_1__*) ;
 int bochs_wait (TYPE_1__*) ;
 int eprintf (char*) ;
 int free (char*) ;
 char* r_str_newf (char*,char const*) ;
 size_t strlen (char*) ;
 size_t write (int ,char*,size_t) ;

void bochs_send_cmd(libbochs_t* b, const char *cmd, bool bWait) {
 char *cmdbuff = r_str_newf ("%s\n", cmd);
 bochs_reset_buffer (b);






 size_t cmdlen = strlen (cmdbuff);
 if (write (b->hWritePipeOut, cmdbuff, cmdlen) != cmdlen) {
  eprintf ("boch_send_cmd failed\n");
  goto beach;
 }

 if (bWait)
  bochs_wait (b);
beach:
 free (cmdbuff);
}
