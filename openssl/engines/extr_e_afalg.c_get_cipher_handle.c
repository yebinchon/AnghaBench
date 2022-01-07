
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cbc_handles ;


 size_t AES_CBC_128 ;
 size_t AES_CBC_192 ;
 size_t AES_CBC_256 ;



 int * cbc_handle ;

__attribute__((used)) static cbc_handles *get_cipher_handle(int nid)
{
    switch (nid) {
    case 130:
        return &cbc_handle[AES_CBC_128];
    case 129:
        return &cbc_handle[AES_CBC_192];
    case 128:
        return &cbc_handle[AES_CBC_256];
    default:
        return ((void*)0);
    }
}
