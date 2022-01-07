
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ssize_t ;
typedef int php_socket_t ;
struct TYPE_11__ {int * last; TYPE_6__* first; } ;
struct TYPE_14__ {TYPE_2__ buffer; } ;
typedef TYPE_5__ php_cli_server_content_sender ;
struct TYPE_12__ {size_t p; int len; } ;
struct TYPE_10__ {size_t p; int len; } ;
struct TYPE_13__ {TYPE_3__ immortal; TYPE_1__ heap; } ;
struct TYPE_15__ {int type; TYPE_4__ data; struct TYPE_15__* next; } ;
typedef TYPE_6__ php_cli_server_chunk ;




 int pefree (TYPE_6__*,int) ;
 int php_cli_server_chunk_dtor (TYPE_6__*) ;
 int php_socket_errno () ;
 size_t send (int ,size_t,int,int ) ;

__attribute__((used)) static int php_cli_server_content_sender_send(php_cli_server_content_sender *sender, php_socket_t fd, size_t *nbytes_sent_total)
{
 php_cli_server_chunk *chunk, *next;
 size_t _nbytes_sent_total = 0;

 for (chunk = sender->buffer.first; chunk; chunk = next) {



  ssize_t nbytes_sent;

  next = chunk->next;

  switch (chunk->type) {
  case 129:



   nbytes_sent = send(fd, chunk->data.heap.p, chunk->data.heap.len, 0);

   if (nbytes_sent < 0) {
    *nbytes_sent_total = _nbytes_sent_total;
    return php_socket_errno();



   } else if (nbytes_sent == (ssize_t)chunk->data.heap.len) {

    php_cli_server_chunk_dtor(chunk);
    pefree(chunk, 1);
    sender->buffer.first = next;
    if (!next) {
     sender->buffer.last = ((void*)0);
    }
   } else {
    chunk->data.heap.p += nbytes_sent;
    chunk->data.heap.len -= nbytes_sent;
   }
   _nbytes_sent_total += nbytes_sent;
   break;

  case 128:



   nbytes_sent = send(fd, chunk->data.immortal.p, chunk->data.immortal.len, 0);

   if (nbytes_sent < 0) {
    *nbytes_sent_total = _nbytes_sent_total;
    return php_socket_errno();



   } else if (nbytes_sent == (ssize_t)chunk->data.immortal.len) {

    php_cli_server_chunk_dtor(chunk);
    pefree(chunk, 1);
    sender->buffer.first = next;
    if (!next) {
     sender->buffer.last = ((void*)0);
    }
   } else {
    chunk->data.immortal.p += nbytes_sent;
    chunk->data.immortal.len -= nbytes_sent;
   }
   _nbytes_sent_total += nbytes_sent;
   break;
  }
 }
 *nbytes_sent_total = _nbytes_sent_total;
 return 0;
}
