
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;


 int APR_SUCCESS ;

__attribute__((used)) static apr_status_t php_server_context_cleanup(void *data_)
{
 void **data = data_;
 *data = ((void*)0);
 return APR_SUCCESS;
}
