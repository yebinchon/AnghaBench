
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int* data; int object; } ;
struct TYPE_6__ {int Offset; int Size; } ;
typedef TYPE_1__* PSTREAM_HEADER ;
typedef TYPE_2__ PE ;
typedef int DWORD ;


 scalar_t__ fits_in_pe (TYPE_2__*,int const*,int) ;
 int set_integer (int,int ,char*) ;
 int set_string (char*,int ,char*,int) ;
 int sprintf (char*,char*,int,int,int,int const,int const,int const,int const,int const,int const,int const,int const) ;

void dotnet_parse_guid( PE* pe, ut64 metadata_root, PSTREAM_HEADER guid_header) {

 char guid[37];
 int i = 0;

 const uint8_t* guid_offset = pe->data + metadata_root + guid_header->Offset;
 DWORD guid_size = guid_header->Size;



 while (guid_size >= 16 && fits_in_pe(pe, guid_offset, 16)) {
  sprintf(guid, "%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x",
    *(uint32_t*) guid_offset,
    *(uint16_t*) (guid_offset + 4),
    *(uint16_t*) (guid_offset + 6),
    *(guid_offset + 8),
    *(guid_offset + 9),
    *(guid_offset + 10),
    *(guid_offset + 11),
    *(guid_offset + 12),
    *(guid_offset + 13),
    *(guid_offset + 14),
    *(guid_offset + 15));
  guid[(16 * 2) + 4] = '\0';
  set_string (guid, pe->object, "guids[%i]", i);
  i++;
  guid_size -= 16;
 }
 set_integer(i, pe->object, "number_of_guids");
}
