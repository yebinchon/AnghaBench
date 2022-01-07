
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chunk {int flags; int action; int data; } ;
 int FLAGS_NO_FREE ;
 int free (int ) ;
 int lwan_strbuf_free (int ) ;
 int lwan_tpl_free (int ) ;

__attribute__((used)) static void free_chunk(struct chunk *chunk)
{
    if (!chunk)
        return;
    if (chunk->flags & FLAGS_NO_FREE)
        return;

    switch (chunk->action) {
    case 132:
    case 137:
    case 130:
    case 129:
    case 128:
    case 135:
    case 134:

        break;
    case 133:
    case 131:
        free(chunk->data);
        break;
    case 138:
        lwan_strbuf_free(chunk->data);
        break;
    case 136:
        lwan_tpl_free(chunk->data);
        break;
    }
}
