
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_14__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_11__ {void** data; } ;
struct TYPE_12__ {TYPE_2__ payload; } ;
struct TYPE_13__ {TYPE_3__ data_container; } ;
struct TYPE_16__ {TYPE_4__ ptp; } ;
struct TYPE_15__ {scalar_t__ str; void* u64; void* i64; void* u32; void* i32; void* u16; void* i16; void* u8; void* i8; } ;
struct TYPE_10__ {TYPE_7__* pData; } ;
typedef TYPE_6__ PTP_PropertyValueTypedef ;
typedef TYPE_7__ MTP_HandleTypeDef ;


 void* LE16 (void**) ;
 void* LE32 (void**) ;
 void* LE64 (void**) ;
 int PTP_GetString (void**,void**,int*) ;

__attribute__((used)) static void PTP_GetDevicePropValue(USBH_HandleTypeDef *phost,
                                   uint32_t *offset,
                                   uint32_t total,
                                   PTP_PropertyValueTypedef* value,
                                   uint16_t datatype)
{
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  uint8_t *data = MTP_Handle->ptp.data_container.payload.data;
  uint16_t len;
  switch (datatype)
  {
  case 134:
    value->i8 = *(uint8_t *)&(data[*offset]);
    *offset += 1;
    break;
  case 128:
    value->u8 = *(uint8_t *)&(data[*offset]);
    *offset += 1;
    break;
  case 137:

    value->i16 = LE16(&(data[*offset]));
    *offset += 2;
    break;
  case 131:
    value->u16 = LE16(&(data[*offset]));
    *offset += 2;
    break;
  case 136:
    value->i32 = LE32(&(data[*offset]));
    *offset += 4;
    break;
  case 130:
    value->u32 = LE32(&(data[*offset]));
    *offset += 4;
    break;
  case 135:
    value->i64 = LE64(&(data[*offset]));
    *offset += 8;
    break;
  case 129:
    value->u64 = LE64(&(data[*offset]));
    *offset += 8;
    break;

  case 132:
    *offset += 16;
    break;
  case 138:
    *offset += 16;
    break;

  case 133:

    PTP_GetString((uint8_t *)value->str, (uint8_t *)&(data[*offset]), &len);
    *offset += len*2+1;
    break;
  default:
    break;
  }
}
