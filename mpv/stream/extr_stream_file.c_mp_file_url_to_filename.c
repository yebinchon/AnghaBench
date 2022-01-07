
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr ;


 scalar_t__ bstrcasecmp0 (int ,char*) ;
 char* bstrto0 (void*,int ) ;
 int memmove (char*,char*,int ) ;
 int mp_split_proto (int ,int *) ;
 int mp_url_unescape_inplace (char*) ;
 int strlen (char*) ;

char *mp_file_url_to_filename(void *talloc_ctx, bstr url)
{
    bstr proto = mp_split_proto(url, &url);
    if (bstrcasecmp0(proto, "file") != 0)
        return ((void*)0);
    char *filename = bstrto0(talloc_ctx, url);
    mp_url_unescape_inplace(filename);





    return filename;
}
