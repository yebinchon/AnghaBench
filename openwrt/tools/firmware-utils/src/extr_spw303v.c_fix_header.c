
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spw303v_tag {int headerCRC; int imageCRC; int certf1Address; int signiture_1; } ;


 int IMAGETAG_CRC_START ;
 int * IMAGETAG_MAGIC1_TCOM ;
 int crc32 (int ,void*,int) ;
 void* fake_data ;
 int htonl (int ) ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;
 int ntohl (int ) ;
 int strlen (int *) ;

void fix_header(void *buf)
{
 struct spw303v_tag *tag = buf;
 uint32_t crc;

 memset(tag->signiture_1, 0, 20);
 memcpy(tag->signiture_1, IMAGETAG_MAGIC1_TCOM, strlen(IMAGETAG_MAGIC1_TCOM));


 memset(tag->certf1Address, 0, 74);


 crc = ntohl(*((uint32_t *)&tag->imageCRC));

 crc = htonl(crc32(crc, fake_data, 64));

 memcpy(tag->imageCRC, &crc, 4);


 crc = htonl(crc32(IMAGETAG_CRC_START, buf, 236));
 memcpy(tag->headerCRC, &crc, 4);
}
