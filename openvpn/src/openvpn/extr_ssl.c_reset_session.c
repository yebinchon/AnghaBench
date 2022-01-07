
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_session {int dummy; } ;
struct tls_multi {int dummy; } ;


 int tls_session_free (struct tls_session*,int) ;
 int tls_session_init (struct tls_multi*,struct tls_session*) ;

__attribute__((used)) static void
reset_session(struct tls_multi *multi, struct tls_session *session)
{
    tls_session_free(session, 0);
    tls_session_init(multi, session);
}
