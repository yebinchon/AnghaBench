
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_response_settings {scalar_t__ code; } ;



__attribute__((used)) static void *response_create(const char *prefix __attribute__((unused)),
                             void *instance)
{
    struct lwan_response_settings *settings = instance;

    return (void *)settings->code;
}
