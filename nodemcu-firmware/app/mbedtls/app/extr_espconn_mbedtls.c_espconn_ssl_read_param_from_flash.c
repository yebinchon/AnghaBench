
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_16__ {int auth_level; int auth_type; } ;
typedef TYPE_7__ mbedtls_auth_info ;
typedef scalar_t__ int32 ;
struct TYPE_14__ {int sector; } ;
struct TYPE_13__ {int sector; } ;
struct TYPE_15__ {TYPE_5__ cert_req_sector; TYPE_4__ cert_ca_sector; } ;
struct TYPE_11__ {int sector; } ;
struct TYPE_10__ {int sector; } ;
struct TYPE_12__ {TYPE_2__ cert_req_sector; TYPE_1__ cert_ca_sector; } ;
struct TYPE_17__ {TYPE_6__ server; TYPE_3__ client; } ;






 scalar_t__ ESPCONN_SECURE_MAX_SIZE ;

 int spi_flash_read (scalar_t__,void*,scalar_t__) ;
 TYPE_8__ ssl_option ;

__attribute__((used)) static bool espconn_ssl_read_param_from_flash(void *param, uint16 len, int32 offset, mbedtls_auth_info *auth_info)
{
 if (param == ((void*)0) || (len + offset) > ESPCONN_SECURE_MAX_SIZE) {
  return 0;
 }

 uint32 FILE_PARAM_START_SEC = 0x3B;
 switch (auth_info->auth_level) {
  case 130:
   switch (auth_info->auth_type) {
    case 132:
     FILE_PARAM_START_SEC = ssl_option.client.cert_ca_sector.sector;
     break;
    case 131:
    case 129:
     FILE_PARAM_START_SEC = ssl_option.client.cert_req_sector.sector;
     break;
    default:
     return 0;
   }
   break;
  case 128:
   switch (auth_info->auth_type) {
    case 132:
     FILE_PARAM_START_SEC = ssl_option.server.cert_ca_sector.sector;
     break;
    case 131:
    case 129:
     FILE_PARAM_START_SEC = ssl_option.server.cert_req_sector.sector;
     break;
    default:
     return 0;
   }
   break;
  default:
   return 0;
   break;
 }

 spi_flash_read(FILE_PARAM_START_SEC * 4096 + offset, param, len);

 return 1;
}
