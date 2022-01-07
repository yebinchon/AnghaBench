
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MP_t ;


 int FALSE ;
 scalar_t__ MP_cmp (int ,int ) ;
 scalar_t__ MP_cmp_1 (int ) ;
 int MP_free (int ) ;
 int MP_modexp (int ,int ,int ,int ) ;
 int MP_new (int ) ;
 int MP_set (int ,int ) ;
 int MP_set_w (int ,int) ;
 int MP_sub_w (int ,int) ;
 int RTMP_LOGERROR ;
 int RTMP_LOGWARNING ;
 int RTMP_Log (int ,char*) ;
 int TRUE ;
 int assert (int ) ;

__attribute__((used)) static int
isValidPublicKey(MP_t y, MP_t p, MP_t q)
{
    int ret = TRUE;
    MP_t bn;
    assert(y);

    MP_new(bn);
    assert(bn);


    MP_set_w(bn, 1);
    if (MP_cmp(y, bn) < 0)
    {
        RTMP_Log(RTMP_LOGERROR, "DH public key must be at least 2");
        ret = FALSE;
        goto failed;
    }


    MP_set(bn, p);
    MP_sub_w(bn, 1);
    if (MP_cmp(y, bn) > 0)
    {
        RTMP_Log(RTMP_LOGERROR, "DH public key must be at most p-2");
        ret = FALSE;
        goto failed;
    }







    if (q)
    {

        MP_modexp(bn, y, q, p);

        if (MP_cmp_1(bn) != 0)
        {
            RTMP_Log(RTMP_LOGWARNING, "DH public key does not fulfill y^q mod p = 1");
        }
    }

failed:
    MP_free(bn);
    return ret;
}
