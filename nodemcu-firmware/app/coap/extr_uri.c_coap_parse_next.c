
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n; scalar_t__ segment_length; unsigned char* pos; unsigned char separator; int dlen; int delim; } ;
typedef TYPE_1__ coap_parse_iterator_t ;


 scalar_t__ strnchr (int ,int ,unsigned char) ;

unsigned char * coap_parse_next(coap_parse_iterator_t *pi) {
  unsigned char *p;

  if (!pi)
    return ((void*)0);


  pi->n -= pi->segment_length;
  pi->pos += pi->segment_length;
  pi->segment_length = 0;


  if (!pi->n || strnchr(pi->delim, pi->dlen, *pi->pos)) {
    pi->pos = ((void*)0);
    return ((void*)0);
  }


  if (*pi->pos == pi->separator) {
    ++pi->pos;
    --pi->n;
  }

  p = pi->pos;

  while (pi->segment_length < pi->n && *p != pi->separator &&
  !strnchr(pi->delim, pi->dlen, *p)) {
    ++p;
    ++pi->segment_length;
  }

  if (!pi->n) {
    pi->pos = ((void*)0);
    pi->segment_length = 0;
  }

  return pi->pos;
}
