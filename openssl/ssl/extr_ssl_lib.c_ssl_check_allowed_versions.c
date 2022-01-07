
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTLS1_2_VERSION ;
 int DTLS1_BAD_VER ;
 int DTLS1_VERSION ;
 int DTLS1_VERSION_MAJOR ;
 scalar_t__ DTLS_VERSION_GE (int,int) ;
 int SSL3_VERSION ;
 int TLS1_1_VERSION ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;

__attribute__((used)) static int ssl_check_allowed_versions(int min_version, int max_version)
{
    int minisdtls = 0, maxisdtls = 0;


    if (min_version == DTLS1_BAD_VER
        || min_version >> 8 == DTLS1_VERSION_MAJOR)
        minisdtls = 1;
    if (max_version == DTLS1_BAD_VER
        || max_version >> 8 == DTLS1_VERSION_MAJOR)
        maxisdtls = 1;

    if ((minisdtls && !maxisdtls && max_version != 0)
        || (maxisdtls && !minisdtls && min_version != 0)) {

        return 0;
    }

    if (minisdtls || maxisdtls) {

        if (min_version == 0)

            min_version = DTLS1_VERSION;
        if (max_version == 0)
            max_version = DTLS1_2_VERSION;
        if (0
            )
            return 0;
    } else {

        if (min_version == 0)
            min_version = SSL3_VERSION;
        if (max_version == 0)
            max_version = TLS1_3_VERSION;
        if (0
            )
            return 0;
    }
    return 1;
}
