
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,int) ;

__attribute__((used)) static int lsapi_set_nblock( int fd, int nonblock )
{
    int val = fcntl( fd, F_GETFL, 0 );
    if ( nonblock )
    {
        if (!( val & O_NONBLOCK ))
        {
            return fcntl( fd, F_SETFL, val | O_NONBLOCK );
        }
    }
    else
    {
        if ( val & O_NONBLOCK )
        {
            return fcntl( fd, F_SETFL, val &(~O_NONBLOCK) );
        }
    }
    return 0;
}
