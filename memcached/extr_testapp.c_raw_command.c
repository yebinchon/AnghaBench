
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int off_t ;


 int ext_command (char*,size_t,int ,int *,int ,void const*,size_t,void const*,size_t) ;

__attribute__((used)) static off_t raw_command(char* buf,
                         size_t bufsz,
                         uint8_t cmd,
                         const void* key,
                         size_t keylen,
                         const void* dta,
                         size_t dtalen) {

    return ext_command(buf, bufsz, cmd, ((void*)0), 0, key, keylen, dta, dtalen);
}
