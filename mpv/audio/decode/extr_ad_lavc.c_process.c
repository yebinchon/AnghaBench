
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int state; } ;
struct mp_filter {struct priv* priv; } ;


 int lavc_process (struct mp_filter*,int *,int ,int ) ;
 int receive_frame ;
 int send_packet ;

__attribute__((used)) static void process(struct mp_filter *ad)
{
    struct priv *priv = ad->priv;

    lavc_process(ad, &priv->state, send_packet, receive_frame);
}
