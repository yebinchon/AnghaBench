
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char gchar ;
typedef int gboolean ;
struct TYPE_4__ {int find; int * dialog; } ;
struct TYPE_3__ {int all; int replace; int find; int * dialog; } ;
typedef int GtkWidget ;


 int GTK_ENTRY (int *) ;
 TYPE_2__ find_widgets ;
 char* gtk_entry_get_text (int ) ;
 int gtk_widget_set_sensitive (int ,int) ;
 TYPE_1__ repl_widgets ;

__attribute__((used)) static void
entry_changed_cb(GtkWidget * entry, GtkWidget * dialog)
{
    const gchar *entry_text;
    gboolean nonempty;

    entry_text = gtk_entry_get_text(GTK_ENTRY(entry));

    if (!entry_text)
 return;

    nonempty = (entry_text[0] != '\0');

    if (dialog == find_widgets.dialog)
    {
 gtk_widget_set_sensitive(find_widgets.find, nonempty);
    }

    if (dialog == repl_widgets.dialog)
    {
 gtk_widget_set_sensitive(repl_widgets.find, nonempty);
 gtk_widget_set_sensitive(repl_widgets.replace, nonempty);
 gtk_widget_set_sensitive(repl_widgets.all, nonempty);
    }
}
