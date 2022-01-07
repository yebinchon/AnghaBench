
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int reg; } ;


 TYPE_1__* gsp_sensors ;
 int gsp_write (struct i2c_client*,int ,int ) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_fan(struct device *dev,
   struct device_attribute *devattr, const char *buf, size_t count)
{
 u16 val;
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 val = simple_strtoul(buf, ((void*)0), 10);
 gsp_write(client, gsp_sensors[attr->index].reg, val);
 return count;
}
