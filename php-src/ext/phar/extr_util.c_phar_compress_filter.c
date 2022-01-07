
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ phar_entry_info ;




 int PHAR_ENT_COMPRESSION_MASK ;

char * phar_compress_filter(phar_entry_info * entry, int return_unknown)
{
 switch (entry->flags & PHAR_ENT_COMPRESSION_MASK) {
 case 128:
  return "zlib.deflate";
 case 129:
  return "bzip2.compress";
 default:
  return return_unknown ? "unknown" : ((void*)0);
 }
}
