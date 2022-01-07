
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int constructor; } ;
typedef int MainClass ;


 TYPE_1__* G_OBJECT_CLASS (int *) ;
 int g_type_class_peek_parent (int *) ;
 int main_constructor ;
 int main_parent_class ;

__attribute__((used)) static void main_class_init (MainClass * klass) {
 main_parent_class = g_type_class_peek_parent (klass);
 G_OBJECT_CLASS (klass)->constructor = main_constructor;
}
