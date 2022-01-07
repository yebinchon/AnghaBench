
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int DoingCopyOut ;
 int PqCommBusy ;
 int internal_putbytes (char const*,size_t) ;

int
pq_putbytes(const char *s, size_t len)
{
 int res;


 Assert(DoingCopyOut);

 if (PqCommBusy)
  return 0;
 PqCommBusy = 1;
 res = internal_putbytes(s, len);
 PqCommBusy = 0;
 return res;
}
