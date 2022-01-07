
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef TYPE_1__* pmbedtls_parame ;
struct TYPE_4__ {int parame_sec; scalar_t__ parame_datalen; unsigned char* parame_data; } ;


 scalar_t__ DATA_OFFSET ;
 scalar_t__ ESPCONN_PK ;
 int FLASH_SECTOR_SIZE ;
 TYPE_1__* def_certificate ;
 TYPE_1__* def_private_key ;
 scalar_t__ os_strstr (unsigned char*,char const* const) ;
 scalar_t__ os_zalloc (scalar_t__) ;
 int spi_flash_read (int,scalar_t__*,scalar_t__) ;

__attribute__((used)) static unsigned char* mbedtls_get_default_obj(uint32 *sec, uint32 type, uint32 *len)
{
 const char* const begin = "-----BEGIN";
 unsigned char *parame_data = ((void*)0);
 pmbedtls_parame mbedtls_obj = ((void*)0);

 if (type == ESPCONN_PK){
  mbedtls_obj = def_private_key;
 } else{
  mbedtls_obj = def_certificate;
 }

 if (mbedtls_obj->parame_sec != 0){

  uint32 data_len = mbedtls_obj->parame_datalen;
  parame_data = (unsigned char *)os_zalloc(data_len + 4);
  if (parame_data){
   spi_flash_read(mbedtls_obj->parame_sec * FLASH_SECTOR_SIZE, (uint32*)parame_data, data_len);




   if ((char*)os_strstr(parame_data, begin) != ((void*)0)){
    data_len ++;
    parame_data[data_len - 1] = '\0';
   }
  }
  *len = data_len;
 } else{
  parame_data = mbedtls_obj->parame_data;
  *len = mbedtls_obj->parame_datalen;
 }

 *sec = mbedtls_obj->parame_sec;
 return parame_data;
}
