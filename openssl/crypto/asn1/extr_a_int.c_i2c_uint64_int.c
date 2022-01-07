
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int buf ;


 size_t asn1_put_uint64 (unsigned char*,int ) ;
 int i2c_ibuf (unsigned char*,int,int,unsigned char**) ;

int i2c_uint64_int(unsigned char *p, uint64_t r, int neg)
{
    unsigned char buf[sizeof(uint64_t)];
    size_t off;

    off = asn1_put_uint64(buf, r);
    return i2c_ibuf(buf + off, sizeof(buf) - off, neg, &p);
}
