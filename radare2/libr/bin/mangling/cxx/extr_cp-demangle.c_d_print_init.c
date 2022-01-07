
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_print_info {char last_char; int * current_template; int num_saved_scopes; int num_copy_templates; scalar_t__ next_copy_template; int * copy_templates; scalar_t__ next_saved_scope; int * saved_scopes; int * component_stack; scalar_t__ is_lambda_arg; scalar_t__ recursion; scalar_t__ demangle_failure; void* opaque; int callback; scalar_t__ flush_count; scalar_t__ pack_index; int * modifiers; int * templates; scalar_t__ len; } ;
typedef int demangle_callbackref ;


 int d_count_templates_scopes (int *,int *,struct demangle_component const*) ;

__attribute__((used)) static void
d_print_init (struct d_print_info *dpi, demangle_callbackref callback,
       void *opaque, const struct demangle_component *dc)
{
  dpi->len = 0;
  dpi->last_char = '\0';
  dpi->templates = ((void*)0);
  dpi->modifiers = ((void*)0);
  dpi->pack_index = 0;
  dpi->flush_count = 0;

  dpi->callback = callback;
  dpi->opaque = opaque;

  dpi->demangle_failure = 0;
  dpi->recursion = 0;
  dpi->is_lambda_arg = 0;

  dpi->component_stack = ((void*)0);

  dpi->saved_scopes = ((void*)0);
  dpi->next_saved_scope = 0;
  dpi->num_saved_scopes = 0;

  dpi->copy_templates = ((void*)0);
  dpi->next_copy_template = 0;
  dpi->num_copy_templates = 0;

  d_count_templates_scopes (&dpi->num_copy_templates,
       &dpi->num_saved_scopes, dc);
  dpi->num_copy_templates *= dpi->num_saved_scopes;

  dpi->current_template = ((void*)0);
}
