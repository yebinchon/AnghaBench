
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int achError ;
typedef int LSAPI_Request ;


 int LSAPI_Write_Stderr_r (int *,char*,int) ;
 int STDERR_FILENO ;
 int errno ;
 int getpid () ;
 int snprintf (char*,int,char*,int,char const*,char const*,char*) ;
 char* strerror (int ) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int LSAPI_perror_r( LSAPI_Request * pReq, const char * pErr1, const char *pErr2 )
{
    char achError[4096];
    int n = snprintf(achError, sizeof(achError), "[%d] %s:%s: %s\n", getpid(),
                     pErr1, (pErr2)?pErr2:"", strerror(errno));
    if (n > (int)sizeof(achError))
        n = sizeof(achError);
    if ( pReq )
        LSAPI_Write_Stderr_r( pReq, achError, n );
    else
        write( STDERR_FILENO, achError, n );
    return 0;
}
