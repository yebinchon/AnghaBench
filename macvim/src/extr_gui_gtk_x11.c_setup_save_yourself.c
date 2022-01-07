
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_4__ {TYPE_1__* mainwin; } ;
struct TYPE_3__ {int window; } ;
typedef int GIOChannel ;
typedef scalar_t__ Atom ;


 int GDK_WINDOW_XDISPLAY (int ) ;
 int GDK_WINDOW_XWINDOW (int ) ;
 scalar_t__ GET_X_ATOM (int ) ;
 int G_IO_ERR ;
 int G_IO_HUP ;
 int G_IO_IN ;
 int XFree (scalar_t__*) ;
 scalar_t__ XGetWMProtocols (int ,int ,scalar_t__**,int*) ;
 int XSetWMProtocols (int ,int ,scalar_t__*,int) ;
 scalar_t__ alloc (unsigned int) ;
 int g_io_add_watch (int *,int,int ,int ) ;
 int * g_io_channel_unix_new (int) ;
 TYPE_2__ gui ;
 int local_xsmp_handle_requests ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int save_yourself_atom ;
 int vim_free (scalar_t__*) ;
 int xsmp_icefd ;

__attribute__((used)) static void
setup_save_yourself(void)
{
    Atom *existing_atoms = ((void*)0);
    int count = 0;
    {



 if (XGetWMProtocols(GDK_WINDOW_XDISPLAY(gui.mainwin->window),
      GDK_WINDOW_XWINDOW(gui.mainwin->window),
      &existing_atoms, &count))
 {
     Atom *new_atoms;
     Atom save_yourself_xatom;
     int i;

     save_yourself_xatom = GET_X_ATOM(save_yourself_atom);


     for (i = 0; i < count; ++i)
  if (existing_atoms[i] == save_yourself_xatom)
      break;

     if (i == count)
     {

  new_atoms = (Atom *)alloc((unsigned)((count + 1)
            * sizeof(Atom)));
  if (new_atoms != ((void*)0))
  {
      memcpy(new_atoms, existing_atoms, count * sizeof(Atom));
      new_atoms[count] = save_yourself_xatom;
      XSetWMProtocols(GDK_WINDOW_XDISPLAY(gui.mainwin->window),
       GDK_WINDOW_XWINDOW(gui.mainwin->window),
       new_atoms, count + 1);
      vim_free(new_atoms);
  }
     }
     XFree(existing_atoms);
 }
    }
}
