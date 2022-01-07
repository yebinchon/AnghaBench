
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int display; } ;
typedef scalar_t__ Atom ;


 int False ;
 scalar_t__ XInternAtom (int ,char*,int ) ;
 char* x11_atom_name_buf (struct vo_x11_state*,scalar_t__,char*,size_t) ;

__attribute__((used)) static char *x11_dnd_mime_type_buf(struct vo_x11_state *x11, Atom atom,
                                   char *buf, size_t buf_size)
{
    if (atom == XInternAtom(x11->display, "UTF8_STRING", False))
        return "text";
    return x11_atom_name_buf(x11, atom, buf, buf_size);
}
