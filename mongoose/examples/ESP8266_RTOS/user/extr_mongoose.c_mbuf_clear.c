
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {scalar_t__ len; } ;



void mbuf_clear(struct mbuf *mb) {
  mb->len = 0;
}
