
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmsize_t ;
struct TYPE_5__ {TYPE_1__* tif_clientinfo; } ;
struct TYPE_4__ {char* name; void* data; struct TYPE_4__* next; } ;
typedef TYPE_1__ TIFFClientInfoLink ;
typedef TYPE_2__ TIFF ;


 scalar_t__ _TIFFmalloc (int) ;
 int assert (int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void TIFFSetClientInfo( TIFF *tif, void *data, const char *name )

{
    TIFFClientInfoLink *psLink = tif->tif_clientinfo;





    while( psLink != ((void*)0) && strcmp(psLink->name,name) != 0 )
        psLink = psLink->next;

    if( psLink != ((void*)0) )
    {
        psLink->data = data;
        return;
    }





    psLink = (TIFFClientInfoLink *) _TIFFmalloc(sizeof(TIFFClientInfoLink));
    assert (psLink != ((void*)0));
    psLink->next = tif->tif_clientinfo;
    psLink->name = (char *) _TIFFmalloc((tmsize_t)(strlen(name)+1));
    assert (psLink->name != ((void*)0));
    strcpy(psLink->name, name);
    psLink->data = data;

    tif->tif_clientinfo = psLink;
}
