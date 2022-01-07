
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BIO_snprintf (char*,int,char*,int) ;
 int CMP_R_ERROR_PARSING_PKISTATUS ;
 int CMPerr (int ,int ) ;







 int ossl_cmp_add_error_data (char*) ;

const char *ossl_cmp_PKIStatus_to_string(int status)
{
    switch (status) {
    case 134:
        return "PKIStatus: accepted";
    case 133:
        return "PKIStatus: granted with modifications";
    case 131:
        return "PKIStatus: rejection";
    case 128:
        return "PKIStatus: waiting";
    case 129:
        return "PKIStatus: revocation warning - a revocation of the cert is imminent";
    case 130:
        return "PKIStatus: revocation notification - a revocation of the cert has occurred";
    case 132:
        return "PKIStatus: key update warning - update already done for the cert";
    default:
        {
            char buf[40];
            BIO_snprintf(buf, sizeof(buf), "PKIStatus: invalid=%d", status);
            CMPerr(0, CMP_R_ERROR_PARSING_PKISTATUS);
            ossl_cmp_add_error_data(buf);
            return ((void*)0);
        }
    }
}
