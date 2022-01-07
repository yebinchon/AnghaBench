
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENVPN_AEAD_TAG_LENGTH ;
 unsigned int OPENVPN_MAX_CIPHER_BLOCK_SIZE ;
 int OPENVPN_MAX_HMAC_SIZE ;
 unsigned int OPENVPN_MAX_IV_LENGTH ;
 unsigned int max_int (int ,int ) ;
 unsigned int packet_id_size (int) ;

unsigned int
crypto_max_overhead(void)
{
    return packet_id_size(1) + OPENVPN_MAX_IV_LENGTH
           +OPENVPN_MAX_CIPHER_BLOCK_SIZE
           +max_int(OPENVPN_MAX_HMAC_SIZE, OPENVPN_AEAD_TAG_LENGTH);
}
