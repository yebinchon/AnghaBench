
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; scalar_t__ key; } ;
typedef TYPE_1__ mime_header_entry ;


 int efree (scalar_t__) ;

__attribute__((used)) static void php_free_hdr_entry(mime_header_entry *h)
{
 if (h->key) {
  efree(h->key);
 }
 if (h->value) {
  efree(h->value);
 }
}
