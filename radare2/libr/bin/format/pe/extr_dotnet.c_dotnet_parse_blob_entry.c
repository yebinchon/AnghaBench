
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int size; int length; } ;
struct TYPE_6__ {int const* data; int data_size; } ;
typedef TYPE_1__ PE ;
typedef int DWORD ;
typedef TYPE_2__ BLOB_PARSE_RESULT ;


 int fits_in_pe (TYPE_1__*,int const*,int) ;

BLOB_PARSE_RESULT dotnet_parse_blob_entry( PE* pe, const uint8_t* offset) {
 BLOB_PARSE_RESULT result;
 if (!fits_in_pe(pe, offset, 1)) {
  result.size = 0;
  return result;
 }

 if ((*offset & 0x80) == 0x00) {
  result.length = (DWORD) *offset;
  result.size = 1;
 } else if ((*offset & 0xC0) == 0x80) {

  if (!fits_in_pe(pe, offset, 2)) {
   result.size = 0;
   return result;
  }


  result.length = ((*offset & 0x3F) << 8) | *(offset + 1);
  result.size = 2;
 } else if (offset + 4 < pe->data + pe->data_size && (*offset & 0xE0) == 0xC0) {

  if (!fits_in_pe(pe, offset, 4)) {
   result.size = 0;
   return result;
  }

  result.length = ((*offset & 0x1F) << 24) |
   (*(offset + 1) << 16) |
   (*(offset + 2) << 8) |
   *(offset + 3);
  result.size = 4;
 } else {

  result.size = 0;
 }
 return result;
}
