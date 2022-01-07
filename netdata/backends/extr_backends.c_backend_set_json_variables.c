
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * backend_response_checker_t ;
typedef int * backend_request_formatter_t ;


 scalar_t__ BACKEND_OPTIONS_DATA_SOURCE (int ) ;
 scalar_t__ BACKEND_SOURCE_DATA_AS_COLLECTED ;
 int format_dimension_collected_json_plaintext ;
 int format_dimension_stored_json_plaintext ;
 int global_backend_options ;
 int process_json_response ;

void backend_set_json_variables(int *default_port,
                                backend_response_checker_t brc,
                                backend_request_formatter_t brf)
{
    *default_port = 5448;
    *brc = process_json_response;

    if (BACKEND_OPTIONS_DATA_SOURCE(global_backend_options) == BACKEND_SOURCE_DATA_AS_COLLECTED)
        *brf = format_dimension_collected_json_plaintext;
    else
        *brf = format_dimension_stored_json_plaintext;
}
