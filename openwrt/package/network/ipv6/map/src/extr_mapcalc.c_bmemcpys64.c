
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 size_t be64_to_cpu (int ) ;
 int bmemcpy (void*,int *,size_t) ;
 int cpu_to_be64 (size_t) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static void bmemcpys64(void *av, const void *bv, size_t frombits, size_t nbits)
{
 uint64_t buf = 0;
 const uint8_t *b = bv;
 size_t frombyte = frombits / 8, tobyte = (frombits + nbits) / 8;

 memcpy(&buf, &b[frombyte], tobyte - frombyte + 1);
 buf = cpu_to_be64(be64_to_cpu(buf) << (frombits % 8));

 bmemcpy(av, &buf, nbits);
}
