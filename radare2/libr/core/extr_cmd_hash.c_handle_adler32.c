
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int r_cons_printf (char*,int ,int ,int ,int ) ;
 int r_hash_adler32 (int const*,int) ;

__attribute__((used)) static void handle_adler32 (const ut8 *block, int len) {
 ut32 hn = r_hash_adler32 (block, len);
 ut8 *b = (ut8*)&hn;
 r_cons_printf ("%02x%02x%02x%02x\n", b[0], b[1], b[2], b[3]);
}
