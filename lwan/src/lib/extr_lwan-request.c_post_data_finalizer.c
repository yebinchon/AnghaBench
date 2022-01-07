
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_request_parser_helper {scalar_t__ error_when_time; int error_when_n_packets; } ;
struct lwan_request {struct lwan_request_parser_helper* helper; } ;
typedef enum lwan_read_finalizer { ____Placeholder_lwan_read_finalizer } lwan_read_finalizer ;


 int FINALIZER_DONE ;
 int FINALIZER_ERROR_TIMEOUT ;
 int FINALIZER_TRY_AGAIN ;
 scalar_t__ UNLIKELY (int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static enum lwan_read_finalizer
post_data_finalizer(size_t total_read,
                    size_t buffer_size,
                    struct lwan_request *request,
                    int n_packets)
{
    struct lwan_request_parser_helper *helper = request->helper;

    if (buffer_size == total_read)
        return FINALIZER_DONE;




    if (UNLIKELY(time(((void*)0)) > helper->error_when_time))
        return FINALIZER_ERROR_TIMEOUT;



    if (UNLIKELY(n_packets > helper->error_when_n_packets))
        return FINALIZER_ERROR_TIMEOUT;

    return FINALIZER_TRY_AGAIN;
}
