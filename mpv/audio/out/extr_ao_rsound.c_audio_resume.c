
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int rd; } ;
struct ao {struct priv* priv; } ;


 int rsd_pause (int ,int ) ;

__attribute__((used)) static void audio_resume(struct ao *ao)
{
    struct priv *priv = ao->priv;
    rsd_pause(priv->rd, 0);
}
