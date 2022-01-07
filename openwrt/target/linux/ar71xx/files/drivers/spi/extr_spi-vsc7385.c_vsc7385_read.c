
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int t ;
struct vsc7385 {int lock; int spi; } ;
struct spi_transfer {int len; scalar_t__* rx_buf; scalar_t__* tx_buf; } ;
struct spi_message {int dummy; } ;
typedef int cmd ;
typedef int buf ;


 int EINVAL ;
 int VSC73XX_CMD_MODE_READ ;
 int memset (struct spi_transfer**,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int vsc7385_is_addr_valid (scalar_t__,scalar_t__) ;
 scalar_t__ vsc7385_make_addr (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int vsc7385_read(struct vsc7385 *vsc, u8 block, u8 subblock, u8 reg,
   u32 *value)
{
 u8 cmd[4];
 u8 buf[4];
 struct spi_transfer t[2];
 struct spi_message m;
 int err;

 if (!vsc7385_is_addr_valid(block, subblock))
  return -EINVAL;

 spi_message_init(&m);

 memset(&t, 0, sizeof(t));

 t[0].tx_buf = cmd;
 t[0].len = sizeof(cmd);
 spi_message_add_tail(&t[0], &m);

 t[1].rx_buf = buf;
 t[1].len = sizeof(buf);
 spi_message_add_tail(&t[1], &m);

 cmd[0] = vsc7385_make_addr(VSC73XX_CMD_MODE_READ, block, subblock);
 cmd[1] = reg;
 cmd[2] = 0;
 cmd[3] = 0;

 mutex_lock(&vsc->lock);
 err = spi_sync(vsc->spi, &m);
 mutex_unlock(&vsc->lock);

 if (err)
  return err;

 *value = (((u32) buf[0]) << 24) | (((u32) buf[1]) << 16) |
   (((u32) buf[2]) << 8) | ((u32) buf[3]);

 return 0;
}
