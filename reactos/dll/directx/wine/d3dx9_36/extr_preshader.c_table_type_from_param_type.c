
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pres_value_type { ____Placeholder_pres_value_type } pres_value_type ;
typedef int D3DXPARAMETER_TYPE ;





 int FIXME (char*,int) ;
 int PRES_VT_BOOL ;
 int PRES_VT_COUNT ;
 int PRES_VT_FLOAT ;
 int PRES_VT_INT ;

__attribute__((used)) static enum pres_value_type table_type_from_param_type(D3DXPARAMETER_TYPE type)
{
    switch (type)
    {
        case 129:
            return PRES_VT_FLOAT;
        case 128:
            return PRES_VT_INT;
        case 130:
            return PRES_VT_BOOL;
        default:
            FIXME("Unsupported type %u.\n", type);
            return PRES_VT_COUNT;
    }
}
