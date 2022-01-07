
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bluray_priv_s {int bd; } ;
struct TYPE_4__ {struct bluray_priv_s* priv; } ;
typedef TYPE_1__ stream_t ;
typedef int BD_EVENT ;


 scalar_t__ bd_get_event (int ,int *) ;
 int bd_read (int ,void*,int) ;
 int handle_event (TYPE_1__*,int *) ;

__attribute__((used)) static int bluray_stream_fill_buffer(stream_t *s, void *buf, int len)
{
    struct bluray_priv_s *b = s->priv;
    BD_EVENT event;
    while (bd_get_event(b->bd, &event))
        handle_event(s, &event);
    return bd_read(b->bd, buf, len);
}
