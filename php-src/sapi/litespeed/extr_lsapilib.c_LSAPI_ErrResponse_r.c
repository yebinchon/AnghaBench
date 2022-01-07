
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LSAPI_Request ;


 int LSAPI_AppendRespHeader_r (int *,char const*,int ) ;
 int LSAPI_Finish_r (int *) ;
 int LSAPI_SetRespStatus_r (int *,int) ;
 int LSAPI_Write_r (int *,char const*,int) ;
 int strlen (char const*) ;

int LSAPI_ErrResponse_r( LSAPI_Request * pReq, int code, const char ** pRespHeaders,
                         const char * pBody, int bodyLen )
{
    LSAPI_SetRespStatus_r( pReq, code );
    if ( pRespHeaders )
    {
        while( *pRespHeaders )
        {
            LSAPI_AppendRespHeader_r( pReq, *pRespHeaders, strlen( *pRespHeaders ) );
            ++pRespHeaders;
        }
    }
    if ( pBody &&( bodyLen > 0 ))
    {
        LSAPI_Write_r( pReq, pBody, bodyLen );
    }
    LSAPI_Finish_r( pReq );
    return 0;
}
