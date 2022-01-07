
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ra_vartype { ____Placeholder_ra_vartype } ra_vartype ;






size_t ra_vartype_size(enum ra_vartype type)
{
    switch (type) {
    case 128: return sizeof(int);
    case 129: return sizeof(float);
    case 130: return 1;
    default: return 0;
    }
}
