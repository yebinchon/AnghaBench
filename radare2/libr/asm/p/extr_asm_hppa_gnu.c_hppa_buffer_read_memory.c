
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 int * bytes ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hppa_buffer_read_memory (bfd_vma memaddr, bfd_byte *myaddr, ut32 length, struct disassemble_info *info) {
 memcpy (myaddr, bytes, length);
 return 0;
}
