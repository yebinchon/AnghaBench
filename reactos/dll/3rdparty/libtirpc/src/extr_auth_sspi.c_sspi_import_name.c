
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int * sspi_name_t ;
struct TYPE_3__ {scalar_t__ length; int value; } ;
typedef TYPE_1__ sspi_buffer_desc ;


 int SEC_E_INSUFFICIENT_MEMORY ;
 int SEC_E_OK ;
 int * calloc (scalar_t__,int) ;
 int log_debug (char*,int *) ;
 int strcpy (int *,char*) ;
 int strncat (int *,int ,scalar_t__) ;

uint32_t sspi_import_name(sspi_buffer_desc *name_in, sspi_name_t *name_out)
{
    *name_out = calloc(name_in->length + 5, sizeof(char));
    if (*name_out == ((void*)0))
        return SEC_E_INSUFFICIENT_MEMORY;

    strcpy(*name_out, "nfs/");
    strncat(*name_out, name_in->value, name_in->length);

    log_debug("imported service name is: %s\n", *name_out);

    return SEC_E_OK;
}
