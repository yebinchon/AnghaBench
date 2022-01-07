
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;
typedef int GtkForm ;


 int * GTK_WIDGET (int *) ;
 int gtk_form_get_type () ;
 int * gtk_type_new (int ) ;

GtkWidget *
gtk_form_new(void)
{
    GtkForm *form;

    form = gtk_type_new(gtk_form_get_type());

    return GTK_WIDGET(form);
}
