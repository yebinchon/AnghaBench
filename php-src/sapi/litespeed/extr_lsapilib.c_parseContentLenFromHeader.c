
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_reqBodyLen; } ;
typedef TYPE_1__ LSAPI_Request ;


 int H_CONTENT_LENGTH ;
 char* LSAPI_GetHeader_r (TYPE_1__*,int ) ;
 int strtoll (char const*,int *,int) ;

__attribute__((used)) static int parseContentLenFromHeader(LSAPI_Request * pReq)
{
    const char * pContentLen = LSAPI_GetHeader_r( pReq, H_CONTENT_LENGTH );
    if ( pContentLen )
        pReq->m_reqBodyLen = strtoll( pContentLen, ((void*)0), 10 );
    return 0;
}
