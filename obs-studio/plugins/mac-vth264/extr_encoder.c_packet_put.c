
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct darray {int dummy; } ;


 int darray_push_back_array (int,struct darray*,int const*,size_t) ;

__attribute__((used)) static void packet_put(struct darray *packet, const uint8_t *buf, size_t size)
{
 darray_push_back_array(sizeof(uint8_t), packet, buf, size);
}
