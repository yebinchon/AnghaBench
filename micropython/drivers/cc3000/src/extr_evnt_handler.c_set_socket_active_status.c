
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT32 ;


 scalar_t__ M_IS_VALID_SD (int) ;
 scalar_t__ M_IS_VALID_STATUS (int) ;
 int socket_active_status ;

void set_socket_active_status(INT32 Sd, INT32 Status)
{
 if(M_IS_VALID_SD(Sd) && M_IS_VALID_STATUS(Status))
 {
  socket_active_status &= ~(1 << Sd);
  socket_active_status |= (Status << Sd);
 }
}
