
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_url ;


 int php_url_free (int *) ;

__attribute__((used)) static void delete_url(void *handle)
{
 php_url_free((php_url*)handle);
}
