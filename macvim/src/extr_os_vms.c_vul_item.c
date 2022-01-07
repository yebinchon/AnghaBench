
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {short buflen; short itemcode; char* bufadrs; int* retlen; } ;
typedef TYPE_1__ ITEM ;



__attribute__((used)) static void
vul_item(ITEM *itm, short len, short cod, char *adr, int *ret)
{
    itm->buflen = len;
    itm->itemcode = cod;
    itm->bufadrs = adr;
    itm->retlen = ret;
}
