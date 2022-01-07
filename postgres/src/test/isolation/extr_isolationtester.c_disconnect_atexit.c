
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PQfinish (scalar_t__) ;
 scalar_t__* conns ;
 int nconns ;

__attribute__((used)) static void
disconnect_atexit(void)
{
 int i;

 for (i = 0; i < nconns; i++)
  if (conns[i])
   PQfinish(conns[i]);
}
