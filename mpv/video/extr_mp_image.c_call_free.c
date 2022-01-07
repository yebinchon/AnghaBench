
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct free_args {int arg; int (* free ) (int ) ;} ;


 int stub1 (int ) ;
 int talloc_free (struct free_args*) ;

__attribute__((used)) static void call_free(void *opaque, uint8_t *data)
{
    struct free_args *args = opaque;
    args->free(args->arg);
    talloc_free(args);
}
