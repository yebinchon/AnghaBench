
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_TYPE_NULL ;
 int DEV_TYPE_TAP ;
 int DEV_TYPE_TUN ;
 int DEV_TYPE_UNDEF ;
 scalar_t__ is_dev_type (char const*,char const*,char*) ;

int
dev_type_enum(const char *dev, const char *dev_type)
{
    if (is_dev_type(dev, dev_type, "tun"))
    {
        return DEV_TYPE_TUN;
    }
    else if (is_dev_type(dev, dev_type, "tap"))
    {
        return DEV_TYPE_TAP;
    }
    else if (is_dev_type(dev, dev_type, "null"))
    {
        return DEV_TYPE_NULL;
    }
    else
    {
        return DEV_TYPE_UNDEF;
    }
}
