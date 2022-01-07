
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int R_MIN (int ,int) ;
 int memcpy (int *,int const*,int ) ;
 int r_read_be32 (int *) ;

__attribute__((used)) static void r_rap_packet_fill(ut8 *buf, const ut8* src, int len) {
 if (buf && src && len > 0) {
  ut32 curlen = r_read_be32 (buf + 1);
  memcpy (buf + 5, src, R_MIN (curlen, len));
 }
}
