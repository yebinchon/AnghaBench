
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {scalar_t__ dnd_requested_format; } ;
typedef scalar_t__ Atom ;


 int MP_VERBOSE (struct vo_x11_state*,char*,char*) ;
 scalar_t__ dnd_format_is_better (struct vo_x11_state*,scalar_t__,scalar_t__) ;
 char* x11_atom_name (struct vo_x11_state*,scalar_t__) ;

__attribute__((used)) static void dnd_select_format(struct vo_x11_state *x11, Atom *args, int items)
{
    x11->dnd_requested_format = 0;

    for (int n = 0; n < items; n++) {
        MP_VERBOSE(x11, "DnD type: '%s'\n", x11_atom_name(x11, args[n]));

        if (dnd_format_is_better(x11, x11->dnd_requested_format, args[n]))
            x11->dnd_requested_format = args[n];
    }

    MP_VERBOSE(x11, "Selected DnD type: %s\n", x11->dnd_requested_format ?
                    x11_atom_name(x11, x11->dnd_requested_format) : "(none)");
}
