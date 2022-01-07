
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buffer; size_t size; int contenttype; } ;
typedef int BUFFER_OVERFLOW_EOF ;
typedef TYPE_1__ BUFFER ;


 int CT_TEXT_PLAIN ;
 int D_WEB_BUFFER ;
 int buffer_overflow_check (TYPE_1__*) ;
 int buffer_overflow_init (TYPE_1__*) ;
 TYPE_1__* callocz (int,int) ;
 int debug (int ,char*,size_t) ;
 char* mallocz (size_t) ;

BUFFER *buffer_create(size_t size)
{
    BUFFER *b;

    debug(D_WEB_BUFFER, "Creating new web buffer of size %zu.", size);

    b = callocz(1, sizeof(BUFFER));
    b->buffer = mallocz(size + sizeof(BUFFER_OVERFLOW_EOF) + 2);
    b->buffer[0] = '\0';
    b->size = size;
    b->contenttype = CT_TEXT_PLAIN;
    buffer_overflow_init(b);
    buffer_overflow_check(b);

    return(b);
}
