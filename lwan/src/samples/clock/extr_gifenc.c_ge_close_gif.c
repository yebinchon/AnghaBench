
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lwan_strbuf {int dummy; } ;
struct TYPE_4__ {struct lwan_strbuf* buf; } ;
typedef TYPE_1__ ge_GIF ;


 int free (TYPE_1__*) ;
 int lwan_strbuf_append_char (struct lwan_strbuf*,char) ;

struct lwan_strbuf *ge_close_gif(ge_GIF *gif)
{
    struct lwan_strbuf *buf = gif->buf;

    lwan_strbuf_append_char(gif->buf, ';');
    free(gif);

    return buf;
}
