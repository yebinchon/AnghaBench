
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Main ;
typedef int GType ;


 scalar_t__ g_object_new (int ,int *) ;

Main* main_construct (GType object_type) {
 Main * self = ((void*)0);
 self = (Main*) g_object_new (object_type, ((void*)0));
 return self;
}
