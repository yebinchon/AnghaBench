
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int old_flags; int flags; scalar_t__ is_modified; } ;
typedef TYPE_1__ phar_entry_info ;




 int PHAR_ENT_COMPRESSION_MASK ;

char * phar_decompress_filter(phar_entry_info * entry, int return_unknown)
{
 uint32_t flags;

 if (entry->is_modified) {
  flags = entry->old_flags;
 } else {
  flags = entry->flags;
 }

 switch (flags & PHAR_ENT_COMPRESSION_MASK) {
  case 128:
   return "zlib.inflate";
  case 129:
   return "bzip2.decompress";
  default:
   return return_unknown ? "unknown" : ((void*)0);
 }
}
