
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_SETSIZE ;
 int getdtablesize () ;

int
_rpc_dtablesize(void)
{



 static int size;

 if (size == 0) {
  size = getdtablesize();
  if (size > FD_SETSIZE)
   size = FD_SETSIZE;
 }
 return (size);

}
