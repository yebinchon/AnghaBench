
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_multi {TYPE_1__* session; } ;
struct key_state {scalar_t__ state; int plaintext_read_buf; } ;
struct TYPE_2__ {struct key_state* key; } ;


 int BLEN (int *) ;
 size_t KS_PRIMARY ;
 scalar_t__ S_ACTIVE ;
 size_t TM_ACTIVE ;

__attribute__((used)) static inline int
tls_test_payload_len(const struct tls_multi *multi)
{
    if (multi)
    {
        const struct key_state *ks = &multi->session[TM_ACTIVE].key[KS_PRIMARY];
        if (ks->state >= S_ACTIVE)
        {
            return BLEN(&ks->plaintext_read_buf);
        }
    }
    return 0;
}
