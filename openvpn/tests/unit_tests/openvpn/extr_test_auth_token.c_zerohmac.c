
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AUTH_TOKEN_SESSION_ID_LEN ;
 char* SESSION_ID_PREFIX ;
 int memset (char*,int,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
zerohmac(char *token)
{
    char *hmacstart = token + AUTH_TOKEN_SESSION_ID_LEN
                      + strlen(SESSION_ID_PREFIX) + 2*sizeof(uint64_t);
    memset(hmacstart, 0x8d, strlen(hmacstart));
}
