
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_options {scalar_t__ ns_cert_type; scalar_t__* remote_cert_ku; scalar_t__ verify_x509_type; int verify_x509_name; int * remote_cert_eku; } ;
typedef scalar_t__ result_t ;
typedef int openvpn_x509_cert_t ;


 int D_HANDSHAKE ;
 scalar_t__ FAILURE ;
 int MAX_PARMS ;
 scalar_t__ NS_CERT_CHECK_NONE ;
 scalar_t__ SUCCESS ;
 scalar_t__ VERIFY_X509_NONE ;
 scalar_t__ VERIFY_X509_SUBJECT_DN ;
 scalar_t__ VERIFY_X509_SUBJECT_RDN ;
 scalar_t__ VERIFY_X509_SUBJECT_RDN_PREFIX ;
 int msg (int ,char*,...) ;
 int print_nsCertType (scalar_t__) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 scalar_t__ x509_verify_cert_eku (int *,int *) ;
 scalar_t__ x509_verify_cert_ku (int *,scalar_t__*,int ) ;
 scalar_t__ x509_verify_ns_cert_type (int *,scalar_t__) ;

__attribute__((used)) static result_t
verify_peer_cert(const struct tls_options *opt, openvpn_x509_cert_t *peer_cert,
                 const char *subject, const char *common_name)
{

    if (opt->ns_cert_type != NS_CERT_CHECK_NONE)
    {
        if (SUCCESS == x509_verify_ns_cert_type(peer_cert, opt->ns_cert_type))
        {
            msg(D_HANDSHAKE, "VERIFY OK: nsCertType=%s",
                print_nsCertType(opt->ns_cert_type));
        }
        else
        {
            msg(D_HANDSHAKE, "VERIFY nsCertType ERROR: %s, require nsCertType=%s",
                subject, print_nsCertType(opt->ns_cert_type));
            return FAILURE;
        }
    }


    if (opt->remote_cert_ku[0] != 0)
    {
        if (SUCCESS == x509_verify_cert_ku(peer_cert, opt->remote_cert_ku, MAX_PARMS))
        {
            msg(D_HANDSHAKE, "VERIFY KU OK");
        }
        else
        {
            msg(D_HANDSHAKE, "VERIFY KU ERROR");
            return FAILURE;
        }
    }


    if (opt->remote_cert_eku != ((void*)0))
    {
        if (SUCCESS == x509_verify_cert_eku(peer_cert, opt->remote_cert_eku))
        {
            msg(D_HANDSHAKE, "VERIFY EKU OK");
        }
        else
        {
            msg(D_HANDSHAKE, "VERIFY EKU ERROR");
            return FAILURE;
        }
    }


    if (opt->verify_x509_type != VERIFY_X509_NONE)
    {
        if ( (opt->verify_x509_type == VERIFY_X509_SUBJECT_DN
              && strcmp(opt->verify_x509_name, subject) == 0)
             || (opt->verify_x509_type == VERIFY_X509_SUBJECT_RDN
                 && strcmp(opt->verify_x509_name, common_name) == 0)
             || (opt->verify_x509_type == VERIFY_X509_SUBJECT_RDN_PREFIX
                 && strncmp(opt->verify_x509_name, common_name,
                            strlen(opt->verify_x509_name)) == 0) )
        {
            msg(D_HANDSHAKE, "VERIFY X509NAME OK: %s", subject);
        }
        else
        {
            msg(D_HANDSHAKE, "VERIFY X509NAME ERROR: %s, must be %s",
                subject, opt->verify_x509_name);
            return FAILURE;
        }
    }

    return SUCCESS;
}
