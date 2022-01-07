
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar7240sw {int dummy; } ;


 int BIT (int) ;

__attribute__((used)) static inline u32 ar7240sw_port_mask(struct ar7240sw *as, int port)
{
 return BIT(port);
}
