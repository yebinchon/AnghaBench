
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT32 ;
typedef int CHAR ;


 int BSD_RSP_PARAMS_SOCKET_OFFSET ;
 int BSD_RSP_PARAMS_STATUS_OFFSET ;
 scalar_t__ ERROR_SOCKET_INACTIVE ;
 int SOCKET_STATUS_INACTIVE ;
 int STREAM_TO_UINT32 (int *,int ,scalar_t__) ;
 int set_socket_active_status (scalar_t__,int ) ;

void update_socket_active_status(CHAR *resp_params)
{
 INT32 status, sd;

 STREAM_TO_UINT32(resp_params, BSD_RSP_PARAMS_SOCKET_OFFSET,sd);
 STREAM_TO_UINT32(resp_params, BSD_RSP_PARAMS_STATUS_OFFSET,status);

 if(ERROR_SOCKET_INACTIVE == status)
 {
  set_socket_active_status(sd, SOCKET_STATUS_INACTIVE);
 }
}
