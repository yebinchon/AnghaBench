
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int dummy; } ;


 int * annexb_startcode ;
 int assert (int) ;
 int packet_put (struct darray*,int *,int) ;

__attribute__((used)) static void packet_put_startcode(struct darray *packet, int size)
{
 assert(size == 3 || size == 4);

 packet_put(packet, &annexb_startcode[4 - size], size);
}
