
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int LSAPI_sendfile_r (int *,int,int *,size_t) ;
 int g_req ;

__attribute__((used)) static inline ssize_t LSAPI_sendfile( int fdIn, off_t* off, size_t size )
{
    return LSAPI_sendfile_r(&g_req, fdIn, off, size );
}
