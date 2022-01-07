
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int request_rec ;


 int php_request_shutdown (int *) ;

__attribute__((used)) static void php_apache_request_dtor(request_rec *r)
{
 php_request_shutdown(((void*)0));
}
