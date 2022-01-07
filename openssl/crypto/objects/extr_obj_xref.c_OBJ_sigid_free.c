
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sid_free ;
 int * sig_app ;
 int * sigx_app ;
 int sk_nid_triple_free (int *) ;
 int sk_nid_triple_pop_free (int *,int ) ;

void OBJ_sigid_free(void)
{
    sk_nid_triple_pop_free(sig_app, sid_free);
    sig_app = ((void*)0);
    sk_nid_triple_free(sigx_app);
    sigx_app = ((void*)0);
}
