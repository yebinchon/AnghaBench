
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int * malloc (int ) ;
 int r_write_be32 (int *,int ) ;

__attribute__((used)) static ut8 *r_rap_packet(ut8 type, ut32 len) {
 ut8 *buf = malloc (len + 5);
 if (buf) {
  buf[0] = type;
  r_write_be32 (buf + 1, len);
 }
 return buf;
}
