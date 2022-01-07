
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dev_type_enum (char const*,char const*) ;

const char *
dev_type_string(const char *dev, const char *dev_type)
{
    switch (dev_type_enum(dev, dev_type))
    {
        case 128:
            return "tun";

        case 129:
            return "tap";

        case 130:
            return "null";

        default:
            return "[unknown-dev-type]";
    }
}
