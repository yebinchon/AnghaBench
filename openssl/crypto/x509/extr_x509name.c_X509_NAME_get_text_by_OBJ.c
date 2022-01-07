
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_3__ {int length; int data; } ;
typedef TYPE_1__ ASN1_STRING ;
typedef int ASN1_OBJECT ;


 TYPE_1__* X509_NAME_ENTRY_get_data (int ) ;
 int X509_NAME_get_entry (int *,int) ;
 int X509_NAME_get_index_by_OBJ (int *,int const*,int) ;
 int memcpy (char*,int ,int) ;

int X509_NAME_get_text_by_OBJ(X509_NAME *name, const ASN1_OBJECT *obj,
                              char *buf, int len)
{
    int i;
    const ASN1_STRING *data;

    i = X509_NAME_get_index_by_OBJ(name, obj, -1);
    if (i < 0)
        return -1;
    data = X509_NAME_ENTRY_get_data(X509_NAME_get_entry(name, i));
    if (buf == ((void*)0))
        return data->length;
    if (len <= 0)
        return 0;
    i = (data->length > (len - 1)) ? (len - 1) : data->length;
    memcpy(buf, data->data, i);
    buf[i] = '\0';
    return i;
}
