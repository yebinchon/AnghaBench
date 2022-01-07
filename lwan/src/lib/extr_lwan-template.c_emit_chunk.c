
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int chunks; } ;
struct chunk {int action; int flags; void* data; } ;
typedef enum flags { ____Placeholder_flags } flags ;
typedef enum action { ____Placeholder_action } action ;


 struct chunk* chunk_array_append (int *) ;
 int lwan_status_critical_perror (char*) ;

__attribute__((used)) static void emit_chunk(struct parser *parser,
                       enum action action,
                       enum flags flags,
                       void *data)
{
    struct chunk *chunk;

    chunk = chunk_array_append(&parser->chunks);
    if (!chunk)
        lwan_status_critical_perror("Could not emit template chunk");

    chunk->action = action;
    chunk->flags = flags;
    chunk->data = data;
}
