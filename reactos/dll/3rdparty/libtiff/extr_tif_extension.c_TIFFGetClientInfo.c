
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* tif_clientinfo; } ;
struct TYPE_4__ {void* data; struct TYPE_4__* next; int name; } ;
typedef TYPE_1__ TIFFClientInfoLink ;
typedef TYPE_2__ TIFF ;


 scalar_t__ strcmp (int ,char const*) ;

void *TIFFGetClientInfo( TIFF *tif, const char *name )

{
    TIFFClientInfoLink *psLink = tif->tif_clientinfo;

    while( psLink != ((void*)0) && strcmp(psLink->name,name) != 0 )
        psLink = psLink->next;

    if( psLink != ((void*)0) )
        return psLink->data;
    else
        return ((void*)0);
}
