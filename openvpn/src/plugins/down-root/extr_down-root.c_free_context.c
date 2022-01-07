
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct down_root_context {struct down_root_context* command; } ;


 int free (struct down_root_context*) ;

__attribute__((used)) static void
free_context(struct down_root_context *context)
{
    if (context)
    {
        if (context->command)
        {
            free(context->command);
        }
        free(context);
    }
}
