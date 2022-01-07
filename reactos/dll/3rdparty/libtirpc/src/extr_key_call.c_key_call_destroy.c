
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_call_private {scalar_t__ client; } ;


 int clnt_destroy (scalar_t__) ;
 int free (struct key_call_private*) ;

__attribute__((used)) static void
key_call_destroy(void *vp)
{
 struct key_call_private *kcp = (struct key_call_private *)vp;

 if (kcp) {
  if (kcp->client)
   clnt_destroy(kcp->client);
  free(kcp);
 }
}
