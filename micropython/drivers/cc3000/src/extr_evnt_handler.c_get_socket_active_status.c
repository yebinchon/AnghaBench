
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT32 ;


 scalar_t__ M_IS_VALID_SD (int) ;
 int SOCKET_STATUS_ACTIVE ;
 int SOCKET_STATUS_INACTIVE ;
 int socket_active_status ;

INT32 get_socket_active_status(INT32 Sd)
{
 if(M_IS_VALID_SD(Sd))
 {
  return (socket_active_status & (1 << Sd)) ? SOCKET_STATUS_INACTIVE : SOCKET_STATUS_ACTIVE;
 }
 return SOCKET_STATUS_INACTIVE;
}
