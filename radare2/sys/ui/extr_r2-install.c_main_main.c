
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int Main ;
typedef int GtkWidget ;


 int _g_object_unref0 (int *) ;
 int * g_object_ref_sink (int *) ;
 int gtk_init (int*,int ***) ;
 int gtk_main () ;
 int gtk_widget_show_all (int *) ;
 int * main_new () ;

void main_main (gchar** args, int args_length1) {
 Main* _tmp0_;
 Main* _tmp1_;
 Main* m;
 gtk_init (&args_length1, &args);
 _tmp0_ = main_new ();
 _tmp1_ = g_object_ref_sink (_tmp0_);
 m = _tmp1_;
 gtk_widget_show_all ((GtkWidget*) m);
 gtk_main ();
 _g_object_unref0 (m);
}
