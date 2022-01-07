
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
AMF_DecodeBoolean(const char *data)
{
    return *data != 0;
}
