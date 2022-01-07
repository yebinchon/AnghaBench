
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {scalar_t__ sdb_addrinfo; } ;
typedef TYPE_1__ RBinFile ;


 int atoi (char*) ;
 char* sdb_get (scalar_t__,char*,int ) ;
 char* sdb_itoa (int ,char*,int) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int get_line(RBinFile *bf, ut64 addr, char *file, int len, int *line) {
 if (bf->sdb_addrinfo) {
  char offset[64];
  char *offset_ptr = sdb_itoa (addr, offset, 16);
  char *ret = sdb_get (bf->sdb_addrinfo, offset_ptr, 0);
  if (ret) {
   char *p = strchr (ret, '|');
   if (p) {
    *p = '\0';
    strncpy (file, ret, len);
    *line = atoi (p + 1);
    return 1;
   }
  }
 }
 return 0;
}
