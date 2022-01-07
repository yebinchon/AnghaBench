
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * backend_response_checker_t ;
typedef int backend_request_formatter_t ;


 int process_prometheus_remote_write_response ;

void backend_set_prometheus_variables(int *default_port,
                                      backend_response_checker_t brc,
                                      backend_request_formatter_t brf)
{
    (void)default_port;
    (void)brf;

    (void)brc;





}
