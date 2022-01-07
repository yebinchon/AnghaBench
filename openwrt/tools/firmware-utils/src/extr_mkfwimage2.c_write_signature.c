
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {long pad; int crc; int magic; } ;
typedef TYPE_1__ signature_t ;


 int MAGIC_END ;
 int MAGIC_LENGTH ;
 int crc32 (long,unsigned char*,int) ;
 int htonl (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void write_signature(void* mem, u_int32_t sig_offset)
{

 signature_t* sign = (signature_t*)(mem + sig_offset);
 memset(sign, 0, sizeof(signature_t));

 memcpy(sign->magic, MAGIC_END, MAGIC_LENGTH);
 sign->crc = htonl(crc32(0L,(unsigned char *)mem, sig_offset));
 sign->pad = 0L;
}
