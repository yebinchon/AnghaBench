
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ LSAPI_ReadReqBody (char*,unsigned long long) ;
 scalar_t__ lsapi_mode ;

__attribute__((used)) static size_t sapi_lsapi_read_post(char *buffer, size_t count_bytes)
{
    if ( lsapi_mode ) {
        ssize_t rv = LSAPI_ReadReqBody(buffer, (unsigned long long)count_bytes);
        return (rv >= 0) ? (size_t)rv : 0;
    } else {
        return 0;
    }
}
