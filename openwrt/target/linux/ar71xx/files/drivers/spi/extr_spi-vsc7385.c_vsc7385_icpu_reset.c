
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsc7385 {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int VSC73XX_BLOCK_SYSTEM ;
 int VSC73XX_ICPU_ADDR ;
 int dev_err (int *,char*,int) ;
 int vsc7385_write (struct vsc7385*,int ,int ,int ,int) ;

__attribute__((used)) static inline int vsc7385_icpu_reset(struct vsc7385 *vsc)
{
 int rc;

 rc = vsc7385_write(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_ICPU_ADDR,
      0x0000);
 if (rc)
  dev_err(&vsc->spi->dev,
   "could not reset microcode, err=%d\n", rc);

 return rc;
}
