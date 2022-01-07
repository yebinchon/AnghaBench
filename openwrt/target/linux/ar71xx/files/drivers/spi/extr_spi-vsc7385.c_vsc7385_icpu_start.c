
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc7385 {int dummy; } ;


 int VSC73XX_BLOCK_SYSTEM ;
 int VSC73XX_ICPU_CTRL ;
 int VSC73XX_ICPU_CTRL_START ;
 int vsc7385_write (struct vsc7385*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int vsc7385_icpu_start(struct vsc7385 *vsc)
{
 return vsc7385_write(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_ICPU_CTRL,
        VSC73XX_ICPU_CTRL_START);
}
