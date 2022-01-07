
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _headerInfo {int _value; } ;



int compareValueLocation(const void * v1, const void *v2 )
{
    return ((const struct _headerInfo *)v1)->_value -
           ((const struct _headerInfo *)v2)->_value;
}
