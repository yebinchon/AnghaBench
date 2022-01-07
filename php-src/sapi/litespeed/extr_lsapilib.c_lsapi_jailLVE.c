
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;
typedef int LSAPI_Request ;


 int LSAPI_perror_r (int *,char*,int *) ;
 int fp_lve_jail (struct passwd*,char*) ;
 int lsapi_log (char*,int ,int,char*) ;
 int stub1 (struct passwd*,char*) ;

__attribute__((used)) static int lsapi_jailLVE( LSAPI_Request * pReq, uid_t uid, struct passwd * pw )
{
    int ret = 0;

    char error_msg[1024] = "";
    ret = (*fp_lve_jail)( pw, error_msg );
    if ( ret < 0 )
    {
        lsapi_log("LSAPI: LVE jail(%d) ressult: %d, error: %s !\n",
                  uid, ret, error_msg );
        LSAPI_perror_r( pReq, "LSAPI: jail() failure.", ((void*)0) );
        return -1;
    }

    return ret;
}
