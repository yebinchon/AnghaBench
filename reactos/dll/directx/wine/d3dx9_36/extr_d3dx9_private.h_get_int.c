
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DXPARAMETER_TYPE ;






 int get_bool (int,void const*) ;

__attribute__((used)) static inline int get_int(D3DXPARAMETER_TYPE type, const void *data)
{
    switch (type)
    {
        case 130:
            return (int)(*(float *)data);

        case 129:
        case 128:
            return *(int *)data;

        case 131:
            return get_bool(type, data);

        default:
            return 0;
    }
}
