
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uid_t ;
typedef int LSAPI_Request ;


 int LSAPI_perror_r (int *,char*,int *) ;
 int fp_lve_enter (scalar_t__,scalar_t__,int,int,int *) ;
 int lsapi_log (char*,scalar_t__,int) ;
 int lsapi_lve_error (int *) ;
 scalar_t__ s_lve ;
 int stub1 (scalar_t__,scalar_t__,int,int,int *) ;

__attribute__((used)) static int lsapi_enterLVE( LSAPI_Request * pReq, uid_t uid )
{

    if ( s_lve && uid )
    {
        uint32_t cookie;
        int ret = -1;
        ret = (*fp_lve_enter)(s_lve, uid, -1, -1, &cookie);
        if ( ret < 0 )
        {
            lsapi_log("enter LVE (%d) : ressult: %d !\n", uid, ret );
            LSAPI_perror_r(pReq, "LSAPI: lve_enter() failure, reached resource limit.", ((void*)0) );
            lsapi_lve_error( pReq );
            return -1;
        }
    }


    return 0;
}
