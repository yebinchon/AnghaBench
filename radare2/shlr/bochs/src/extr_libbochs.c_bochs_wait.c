
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t punteroBuffer; int hReadPipeIn; int * data; } ;
typedef TYPE_1__ libbochs_t ;
typedef scalar_t__ DWORD ;


 int F_GETFL ;
 int O_NONBLOCK ;
 scalar_t__ PeekNamedPipe (int ,int *,int ,int *,scalar_t__*,scalar_t__*) ;
 int ReadFile (int ,int *,int,scalar_t__*,int ) ;
 int SIZE_BUF ;
 int Sleep (int) ;
 int bochs_reset_buffer (TYPE_1__*) ;
 int fcntl (int ,int,...) ;
 scalar_t__* lpTmpBuffer ;
 int lprintf (char*) ;
 int memcpy (int *,scalar_t__*,int) ;
 int read (int ,scalar_t__*,int) ;
 scalar_t__ strstr (int *,char*) ;

bool bochs_wait(libbochs_t *b) {
 int flags,n;
 bochs_reset_buffer (b);
 flags = fcntl (b->hReadPipeIn, F_GETFL, 0);
 (void) fcntl (b->hReadPipeIn, (flags | O_NONBLOCK));
 for (;;) {
  n = read (b->hReadPipeIn, lpTmpBuffer, SIZE_BUF - 1);
  if (n > 0) {
   lpTmpBuffer[n] = 0;
   if (b->punteroBuffer + n >= SIZE_BUF - 1) {
    bochs_reset_buffer(b);
   }

   memcpy (b->data + b->punteroBuffer, lpTmpBuffer, n + 1);
   b->punteroBuffer += n;
   if (strstr (&b->data[0], "<bochs:")) {
    break;
   }
  }
 }
 (void) fcntl (b->hReadPipeIn, (flags | ~O_NONBLOCK));
 return 1;

}
