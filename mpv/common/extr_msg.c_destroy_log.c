
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int partial; } ;


 int talloc_free (int ) ;

__attribute__((used)) static void destroy_log(void *ptr)
{
    struct mp_log *log = ptr;


    talloc_free(log->partial);
}
