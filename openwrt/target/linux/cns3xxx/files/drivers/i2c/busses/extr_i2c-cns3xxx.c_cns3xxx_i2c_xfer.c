
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int cns3xxx_i2c_xfer_msg (struct i2c_adapter*,struct i2c_msg*) ;

__attribute__((used)) static int
cns3xxx_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 int i;
 int ret;
 for (i = 0; i < num; i++)
 {
  ret = cns3xxx_i2c_xfer_msg(adap, &msgs[i]);
  if (ret < 0) {
   return ret;
  }
 }
 return num;
}
