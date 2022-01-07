
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv; } ;
typedef TYPE_1__ stream_t ;


 int destruct (int ) ;

__attribute__((used)) static void bluray_stream_close(stream_t *s)
{
    destruct(s->priv);
}
