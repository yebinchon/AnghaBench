
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int forall; int remove; } ;
struct TYPE_3__ {int expose_event; int size_allocate; int size_request; int map; int unrealize; int realize; } ;
typedef TYPE_1__ GtkWidgetClass ;
typedef int GtkFormClass ;
typedef TYPE_2__ GtkContainerClass ;


 int gtk_container_get_type () ;
 int gtk_form_expose ;
 int gtk_form_forall ;
 int gtk_form_map ;
 int gtk_form_realize ;
 int gtk_form_remove ;
 int gtk_form_size_allocate ;
 int gtk_form_size_request ;
 int gtk_form_unrealize ;
 int gtk_type_class (int ) ;
 int parent_class ;

__attribute__((used)) static void
gtk_form_class_init(GtkFormClass *klass)
{
    GtkWidgetClass *widget_class;
    GtkContainerClass *container_class;

    widget_class = (GtkWidgetClass *) klass;
    container_class = (GtkContainerClass *) klass;

    parent_class = gtk_type_class(gtk_container_get_type());

    widget_class->realize = gtk_form_realize;
    widget_class->unrealize = gtk_form_unrealize;
    widget_class->map = gtk_form_map;
    widget_class->size_request = gtk_form_size_request;
    widget_class->size_allocate = gtk_form_size_allocate;
    widget_class->expose_event = gtk_form_expose;

    container_class->remove = gtk_form_remove;
    container_class->forall = gtk_form_forall;
}
