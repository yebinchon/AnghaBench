
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int noblock; } ;


 int ERRCODE_CONNECTION_DOES_NOT_EXIST ;
 int ERROR ;
 TYPE_1__* MyProcPort ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
socket_set_nonblocking(bool nonblocking)
{
 if (MyProcPort == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_CONNECTION_DOES_NOT_EXIST),
     errmsg("there is no client connection")));

 MyProcPort->noblock = nonblocking;
}
