
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo_x11_state {int parent; int window; } ;
struct vo {struct vo_x11_state* x11; } ;
struct TYPE_4__ {long* l; } ;
struct TYPE_5__ {scalar_t__ message_type; TYPE_1__ data; } ;
typedef TYPE_2__ XClientMessageEvent ;


 int MP_VERBOSE (struct vo_x11_state*,char*) ;
 scalar_t__ XA (struct vo_x11_state*,int ) ;
 long XEMBED_EMBEDDED_NOTIFY ;
 int _XEMBED ;

__attribute__((used)) static void vo_x11_xembed_handle_message(struct vo *vo, XClientMessageEvent *ce)
{
    struct vo_x11_state *x11 = vo->x11;
    if (!x11->window || !x11->parent || ce->message_type != XA(x11, _XEMBED))
        return;

    long msg = ce->data.l[1];
    if (msg == XEMBED_EMBEDDED_NOTIFY)
        MP_VERBOSE(x11, "Parent windows supports XEmbed.\n");
}
