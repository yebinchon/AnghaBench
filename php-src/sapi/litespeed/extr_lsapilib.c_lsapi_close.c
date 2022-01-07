
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ g_running ;

__attribute__((used)) static int lsapi_close( int fd )
{
    int ret;
    while( 1 )
    {
        ret = close( fd );
        if (( ret == -1 )&&( errno == EINTR )&&(g_running))
            continue;
        return ret;
    }
}
