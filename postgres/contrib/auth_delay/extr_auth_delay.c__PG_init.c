
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClientAuthentication_hook ;
 int DefineCustomIntVariable (char*,char*,int *,int *,int ,int ,int,int ,int ,int *,int *,int *) ;
 int GUC_UNIT_MS ;
 int INT_MAX ;
 int PGC_SIGHUP ;
 int auth_delay_checks ;
 int auth_delay_milliseconds ;
 int original_client_auth_hook ;

void
_PG_init(void)
{

 DefineCustomIntVariable("auth_delay.milliseconds",
       "Milliseconds to delay before reporting authentication failure",
       ((void*)0),
       &auth_delay_milliseconds,
       0,
       0, INT_MAX / 1000,
       PGC_SIGHUP,
       GUC_UNIT_MS,
       ((void*)0),
       ((void*)0),
       ((void*)0));

 original_client_auth_hook = ClientAuthentication_hook;
 ClientAuthentication_hook = auth_delay_checks;
}
