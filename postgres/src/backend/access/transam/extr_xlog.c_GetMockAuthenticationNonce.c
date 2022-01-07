
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mock_authentication_nonce; } ;


 int Assert (int ) ;
 TYPE_1__* ControlFile ;

char *
GetMockAuthenticationNonce(void)
{
 Assert(ControlFile != ((void*)0));
 return ControlFile->mock_authentication_nonce;
}
