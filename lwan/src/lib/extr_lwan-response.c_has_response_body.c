
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lwan_request_flags { ____Placeholder_lwan_request_flags } lwan_request_flags ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;


 int HTTP_NOT_MODIFIED ;

__attribute__((used)) static inline bool has_response_body(enum lwan_request_flags method,
                                     enum lwan_http_status status)
{

    return (method & 1 << 0) || status != HTTP_NOT_MODIFIED;
}
