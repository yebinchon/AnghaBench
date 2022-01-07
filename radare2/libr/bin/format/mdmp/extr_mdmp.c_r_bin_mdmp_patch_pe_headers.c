
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int section_hdr ;
struct TYPE_8__ {scalar_t__ e_lfanew; } ;
struct TYPE_5__ {int NumberOfSections; scalar_t__ SizeOfOptionalHeader; } ;
struct TYPE_7__ {TYPE_1__ file_header; } ;
struct TYPE_6__ {int VirtualAddress; int PointerToRawData; } ;
typedef int RBuffer ;
typedef TYPE_2__ Pe64_image_section_header ;
typedef TYPE_3__ Pe64_image_nt_headers ;
typedef int Pe64_image_file_header ;
typedef TYPE_4__ Pe64_image_dos_header ;


 int r_buf_read_at (int *,scalar_t__,int *,int) ;
 int r_buf_write_at (int *,scalar_t__,int const*,int) ;

__attribute__((used)) static bool r_bin_mdmp_patch_pe_headers(RBuffer *pe_buf) {
 int i;
 Pe64_image_dos_header dos_hdr;
 Pe64_image_nt_headers nt_hdr;

 r_buf_read_at (pe_buf, 0, (ut8 *)&dos_hdr, sizeof (Pe64_image_dos_header));
 r_buf_read_at (pe_buf, dos_hdr.e_lfanew, (ut8 *)&nt_hdr, sizeof (Pe64_image_nt_headers));


 ut64 sect_hdrs_off = dos_hdr.e_lfanew + 4 + sizeof (Pe64_image_file_header) + nt_hdr.file_header.SizeOfOptionalHeader;
 Pe64_image_section_header section_hdr;
 for (i = 0; i < nt_hdr.file_header.NumberOfSections; i++) {
  r_buf_read_at (pe_buf, sect_hdrs_off + i * sizeof (section_hdr), (ut8 *)&section_hdr, sizeof (section_hdr));
  section_hdr.PointerToRawData = section_hdr.VirtualAddress;
  r_buf_write_at (pe_buf, sect_hdrs_off + i * sizeof (section_hdr), (const ut8 *)&section_hdr, sizeof (section_hdr));
 }

 return 1;
}
