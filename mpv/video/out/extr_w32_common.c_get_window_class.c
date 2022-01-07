
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ATOM ;


 int pthread_once (int *,int ) ;
 int register_window_class ;
 int window_class ;
 int window_class_init_once ;

__attribute__((used)) static ATOM get_window_class(void)
{
    pthread_once(&window_class_init_once, register_window_class);
    return window_class;
}
