
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int be_key; int be_pid; int raddr; } ;
typedef TYPE_1__ PGcancel ;


 int internal_cancel (int *,int ,int ,char*,int) ;
 int strlcpy (char*,char*,int) ;

int
PQcancel(PGcancel *cancel, char *errbuf, int errbufsize)
{
 if (!cancel)
 {
  strlcpy(errbuf, "PQcancel() -- no cancel object supplied", errbufsize);
  return 0;
 }

 return internal_cancel(&cancel->raddr, cancel->be_pid, cancel->be_key,
         errbuf, errbufsize);
}
