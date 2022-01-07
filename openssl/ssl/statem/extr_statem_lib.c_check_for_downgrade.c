
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int DOWNGRADE ;


 int DOWNGRADE_NONE ;
 int DOWNGRADE_TO_1_1 ;
 int DOWNGRADE_TO_1_2 ;
 int SSL_IS_DTLS (int *) ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 scalar_t__ ssl_version_supported (int *,int,int *) ;

__attribute__((used)) static void check_for_downgrade(SSL *s, int vers, DOWNGRADE *dgrd)
{
    if (vers == TLS1_2_VERSION
            && ssl_version_supported(s, TLS1_3_VERSION, ((void*)0))) {
        *dgrd = DOWNGRADE_TO_1_2;
    } else if (!SSL_IS_DTLS(s)
            && vers < TLS1_2_VERSION







            && ssl_version_supported(s, TLS1_2_VERSION, ((void*)0))) {
        *dgrd = DOWNGRADE_TO_1_1;
    } else {
        *dgrd = DOWNGRADE_NONE;
    }
}
