
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ Port ;


 int pgwin32_noblock ;
 int send (int ,void const*,size_t,int ) ;

ssize_t
secure_raw_write(Port *port, const void *ptr, size_t len)
{
 ssize_t n;




 n = send(port->sock, ptr, len, 0);




 return n;
}
