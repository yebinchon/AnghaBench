
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utcrc ;
typedef int ut8 ;
typedef int ut32 ;
typedef enum CRC_PRESETS { ____Placeholder_CRC_PRESETS } CRC_PRESETS ;
typedef int R_CRC_CTX ;


 int CRC_PRESET_SIZE ;
 int crc_final (int *,int *) ;
 int crc_init_preset (int *,int) ;
 int crc_update (int *,int const*,int ) ;

utcrc r_hash_crc_preset (const ut8 *data, ut32 size, enum CRC_PRESETS preset) {
 if (!data || !size || preset >= CRC_PRESET_SIZE) {
  return 0;
 }
 utcrc r;
 R_CRC_CTX crcctx;
 crc_init_preset (&crcctx, preset);
 crc_update (&crcctx, data, size);
 crc_final (&crcctx, &r);
 return r;
}
