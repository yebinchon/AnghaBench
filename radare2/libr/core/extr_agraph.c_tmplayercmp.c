
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmplayer {scalar_t__ layer; } ;



int tmplayercmp (const void *a, const void *b) {
 return ((struct tmplayer *)a)->layer > ((struct tmplayer *)b)->layer;
}
