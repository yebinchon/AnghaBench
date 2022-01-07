
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 scalar_t__ DoingCopyOut ;
 int EOF ;
 int FrontendProtocol ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int PqCommBusy ;
 scalar_t__ internal_putbytes (char const*,size_t) ;
 int pg_hton32 (int ) ;

__attribute__((used)) static int
socket_putmessage(char msgtype, const char *s, size_t len)
{
 if (DoingCopyOut || PqCommBusy)
  return 0;
 PqCommBusy = 1;
 if (msgtype)
  if (internal_putbytes(&msgtype, 1))
   goto fail;
 if (PG_PROTOCOL_MAJOR(FrontendProtocol) >= 3)
 {
  uint32 n32;

  n32 = pg_hton32((uint32) (len + 4));
  if (internal_putbytes((char *) &n32, 4))
   goto fail;
 }
 if (internal_putbytes(s, len))
  goto fail;
 PqCommBusy = 0;
 return 0;

fail:
 PqCommBusy = 0;
 return EOF;
}
