
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsc7385 {int dummy; } ;


 int VSC73XX_BLOCK_SYSTEM ;
 int VSC73XX_ICPU_CLOCK_DELAY ;
 int vsc7385_read (struct vsc7385*,int ,int ,int ,int *) ;

__attribute__((used)) static inline int vsc7385_get_clock_delay(struct vsc7385 *vsc, u32 *val)
{
 return vsc7385_read(vsc, VSC73XX_BLOCK_SYSTEM, 0,
       VSC73XX_ICPU_CLOCK_DELAY, val);
}
