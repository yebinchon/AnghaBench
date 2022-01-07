
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_2__ {int* chksum; int magic; } ;
union record {char* charptr; TYPE_1__ header; } ;


 int GNUTMAGIC ;
 int TMAGIC ;
 int from_oct (int,int*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int is_tar(const ut8 *buf, size_t nbytes) {
 const union record *header = (const union record *)(const void *)buf;
 int i, sum, recsum;
 const char *p;

 if (nbytes < sizeof (union record)) {
  return 0;
 }

 recsum = from_oct (8, header->header.chksum);

 sum = 0;
 p = header->charptr;
 for (i = sizeof(union record); --i >= 0;) {




  sum += 0xFF & *p++;
 }


 for (i = sizeof header->header.chksum; --i >= 0;) {
  sum -= 0xFF & header->header.chksum[i];
 }
 sum += ' ' * sizeof header->header.chksum;
 if (sum != recsum) {
  return 0;
 }
 if (strcmp (header->header.magic, GNUTMAGIC) == 0) {
  return 3;
 }
 if (strcmp (header->header.magic, TMAGIC) == 0) {
  return 2;
 }
 return 1;
}
