
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmsghdr {int cmsg_len; int cmsg_type; int cmsg_level; } ;
struct af_alg_iv {unsigned int ivlen; int iv; } ;


 int ALG_IV_LEN (unsigned int const) ;
 int ALG_SET_IV ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int ) ;
 int SOL_ALG ;
 int memcpy (int ,unsigned char const*,unsigned int const) ;

__attribute__((used)) static void afalg_set_iv_sk(struct cmsghdr *cmsg, const unsigned char *iv,
                            const unsigned int len)
{
    struct af_alg_iv *aiv;

    cmsg->cmsg_level = SOL_ALG;
    cmsg->cmsg_type = ALG_SET_IV;
    cmsg->cmsg_len = CMSG_LEN(ALG_IV_LEN(len));
    aiv = (struct af_alg_iv *)CMSG_DATA(cmsg);
    aiv->ivlen = len;
    memcpy(aiv->iv, iv, len);
}
