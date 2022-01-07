
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {int * session; } ;


 int ASSERT (int) ;
 int D_TLS_DEBUG ;
 int D_TLS_DEBUG_LOW ;
 int TM_SIZE ;
 int dmsg (int ,char*) ;
 int msg (int ,char*,int ,int ,int) ;
 int secure_memzero (int *,int) ;
 int session_index_name (int) ;
 int tls_session_free (int *,int) ;
 int tls_session_init (struct tls_multi*,int *) ;

__attribute__((used)) static void
move_session(struct tls_multi *multi, int dest, int src, bool reinit_src)
{
    msg(D_TLS_DEBUG_LOW, "TLS: move_session: dest=%s src=%s reinit_src=%d",
        session_index_name(dest),
        session_index_name(src),
        reinit_src);
    ASSERT(src != dest);
    ASSERT(src >= 0 && src < TM_SIZE);
    ASSERT(dest >= 0 && dest < TM_SIZE);
    tls_session_free(&multi->session[dest], 0);
    multi->session[dest] = multi->session[src];

    if (reinit_src)
    {
        tls_session_init(multi, &multi->session[src]);
    }
    else
    {
        secure_memzero(&multi->session[src], sizeof(multi->session[src]));
    }

    dmsg(D_TLS_DEBUG, "TLS: move_session: exit");
}
