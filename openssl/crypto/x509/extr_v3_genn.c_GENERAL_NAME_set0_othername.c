
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * value; int * type_id; } ;
typedef TYPE_1__ OTHERNAME ;
typedef int GENERAL_NAME ;
typedef int ASN1_TYPE ;
typedef int ASN1_OBJECT ;


 int ASN1_TYPE_free (int *) ;
 int GENERAL_NAME_set0_value (int *,int ,TYPE_1__*) ;
 int GEN_OTHERNAME ;
 TYPE_1__* OTHERNAME_new () ;

int GENERAL_NAME_set0_othername(GENERAL_NAME *gen,
                                ASN1_OBJECT *oid, ASN1_TYPE *value)
{
    OTHERNAME *oth;
    oth = OTHERNAME_new();
    if (oth == ((void*)0))
        return 0;
    ASN1_TYPE_free(oth->value);
    oth->type_id = oid;
    oth->value = value;
    GENERAL_NAME_set0_value(gen, GEN_OTHERNAME, oth);
    return 1;
}
