
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int MAX_SESSION_ID_ATTEMPTS ;
 scalar_t__ RAND_bytes (unsigned char*,unsigned int) ;
 scalar_t__ SSL_has_matching_session_id (int *,unsigned char*,unsigned int) ;
 int memcpy (unsigned char*,int ,unsigned int) ;
 int session_id_prefix ;
 unsigned int strlen (int ) ;

__attribute__((used)) static int generate_session_id(SSL *ssl, unsigned char *id,
                               unsigned int *id_len)
{
    unsigned int count = 0;
    do {
        if (RAND_bytes(id, *id_len) <= 0)
            return 0;







        memcpy(id, session_id_prefix,
               (strlen(session_id_prefix) < *id_len) ?
               strlen(session_id_prefix) : *id_len);
    }
    while (SSL_has_matching_session_id(ssl, id, *id_len) &&
           (++count < MAX_SESSION_ID_ATTEMPTS));
    if (count >= MAX_SESSION_ID_ATTEMPTS)
        return 0;
    return 1;
}
