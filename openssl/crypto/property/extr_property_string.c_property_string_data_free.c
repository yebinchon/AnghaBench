
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prop_value_idx; scalar_t__ prop_name_idx; int prop_values; int prop_names; } ;
typedef TYPE_1__ PROPERTY_STRING_DATA ;


 int OPENSSL_free (TYPE_1__*) ;
 int property_table_free (int *) ;

__attribute__((used)) static void property_string_data_free(void *vpropdata)
{
    PROPERTY_STRING_DATA *propdata = vpropdata;

    if (propdata == ((void*)0))
        return;

    property_table_free(&propdata->prop_names);
    property_table_free(&propdata->prop_values);
    propdata->prop_name_idx = propdata->prop_value_idx = 0;

    OPENSSL_free(propdata);
}
