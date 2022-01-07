
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int cipher; } ;


 int ASSERT (struct key_type const*) ;
 int M_FATAL ;
 scalar_t__ cipher_kt_mode_aead (int ) ;
 scalar_t__ cipher_kt_mode_ofb_cfb (int ) ;
 int msg (int ,char*) ;

void
check_replay_consistency(const struct key_type *kt, bool packet_id)
{
    ASSERT(kt);

    if (!packet_id && (cipher_kt_mode_ofb_cfb(kt->cipher)
                       || cipher_kt_mode_aead(kt->cipher)))
    {
        msg(M_FATAL, "--no-replay cannot be used with a CFB, OFB or AEAD mode cipher");
    }
}
