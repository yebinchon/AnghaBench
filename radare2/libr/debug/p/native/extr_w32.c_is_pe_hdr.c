
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ e_magic; int e_lfanew; } ;
struct TYPE_3__ {scalar_t__ Signature; } ;
typedef TYPE_1__ IMAGE_NT_HEADERS ;
typedef TYPE_2__ IMAGE_DOS_HEADER ;


 scalar_t__ IMAGE_DOS_SIGNATURE ;
 scalar_t__ IMAGE_NT_SIGNATURE ;

bool is_pe_hdr(unsigned char *pe_hdr) {
 IMAGE_DOS_HEADER *dos_header = (IMAGE_DOS_HEADER *)pe_hdr;
 IMAGE_NT_HEADERS *nt_headers;

 if (dos_header->e_magic == IMAGE_DOS_SIGNATURE) {
  nt_headers = (IMAGE_NT_HEADERS *)((char *)dos_header
    + dos_header->e_lfanew);

  if (nt_headers->Signature == IMAGE_NT_SIGNATURE)
   return 1;
 }
 return 0;
}
