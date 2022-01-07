
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {long pad; int crc; int version; int magic; } ;
typedef TYPE_1__ header_t ;
struct TYPE_5__ {int magic; } ;


 int MAGIC_LENGTH ;
 int crc32 (long,unsigned char*,int) ;
 int htonl (int ) ;
 TYPE_3__ im ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void write_header(void* mem, const char* version)
{
 header_t* header = mem;
 memset(header, 0, sizeof(header_t));

 memcpy(header->magic, im.magic, MAGIC_LENGTH);
 strncpy(header->version, version, sizeof(header->version));
 header->crc = htonl(crc32(0L, (unsigned char *)header,
    sizeof(header_t) - 2 * sizeof(u_int32_t)));
 header->pad = 0L;
}
