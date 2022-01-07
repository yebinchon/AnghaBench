
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; unsigned char* data; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_F_ASN1_STRING_SET ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_realloc (unsigned char*,int) ;
 int memcpy (unsigned char*,char const*,int) ;
 int strlen (char const*) ;

int ASN1_STRING_set(ASN1_STRING *str, const void *_data, int len)
{
    unsigned char *c;
    const char *data = _data;

    if (len < 0) {
        if (data == ((void*)0))
            return 0;
        else
            len = strlen(data);
    }
    if ((str->length <= len) || (str->data == ((void*)0))) {
        c = str->data;
        str->data = OPENSSL_realloc(c, len + 1);
        if (str->data == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_STRING_SET, ERR_R_MALLOC_FAILURE);
            str->data = c;
            return 0;
        }
    }
    str->length = len;
    if (data != ((void*)0)) {
        memcpy(str->data, data, len);

        str->data[len] = '\0';
    }
    return 1;
}
