
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int display; } ;
typedef int Atom ;


 int XFree (char*) ;
 char* XGetAtomName (int ,int ) ;
 int snprintf (char*,size_t,char*,char*) ;

__attribute__((used)) static char *x11_atom_name_buf(struct vo_x11_state *x11, Atom atom,
                               char *buf, size_t buf_size)
{
    buf[0] = '\0';

    char *new_name = XGetAtomName(x11->display, atom);
    if (new_name) {
        snprintf(buf, buf_size, "%s", new_name);
        XFree(new_name);
    }

    return buf;
}
