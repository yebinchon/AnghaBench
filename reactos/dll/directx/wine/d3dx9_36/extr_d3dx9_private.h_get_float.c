
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DXPARAMETER_TYPE ;






 scalar_t__ get_bool (int,void const*) ;

__attribute__((used)) static inline float get_float(D3DXPARAMETER_TYPE type, const void *data)
{
    switch (type)
    {
        case 130:
        case 128:
            return *(float *)data;

        case 129:
            return (float)(*(int *)data);

        case 131:
            return (float)get_bool(type, data);

        default:
            return 0.0f;
    }
}
