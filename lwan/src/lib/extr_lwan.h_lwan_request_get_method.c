
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_request {int flags; } ;
typedef enum lwan_request_flags { ____Placeholder_lwan_request_flags } lwan_request_flags ;


 int REQUEST_METHOD_MASK ;

__attribute__((used)) static inline enum lwan_request_flags
lwan_request_get_method(const struct lwan_request *request)
{
    return (enum lwan_request_flags)(request->flags & REQUEST_METHOD_MASK);
}
