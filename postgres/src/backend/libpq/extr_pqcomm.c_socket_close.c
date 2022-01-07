
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ctx; scalar_t__ cred; } ;
struct TYPE_4__ {int sock; TYPE_2__* gss; } ;
typedef int OM_uint32 ;
typedef int Datum ;


 scalar_t__ GSS_C_NO_CONTEXT ;
 scalar_t__ GSS_C_NO_CREDENTIAL ;
 TYPE_1__* MyProcPort ;
 int PGINVALID_SOCKET ;
 int free (TYPE_2__*) ;
 int gss_delete_sec_context (int *,scalar_t__*,int *) ;
 int gss_release_cred (int *,scalar_t__*) ;
 int secure_close (TYPE_1__*) ;

__attribute__((used)) static void
socket_close(int code, Datum arg)
{

 if (MyProcPort != ((void*)0))
 {
  secure_close(MyProcPort);
  MyProcPort->sock = PGINVALID_SOCKET;
 }
}
