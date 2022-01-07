
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lsapi_log (char*,char const*,int,int ) ;
 int strerror (int) ;

void lsapi_perror( const char * pMessage, int err_no )
{
    lsapi_log("%s, errno: %d (%s)\n", pMessage, err_no,
              strerror( err_no ) );
}
