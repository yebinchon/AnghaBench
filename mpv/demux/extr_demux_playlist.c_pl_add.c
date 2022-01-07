
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl_parser {int pl; } ;
typedef int bstr ;


 char* bstrto0 (int *,int ) ;
 int playlist_add_file (int ,char*) ;
 int talloc_free (char*) ;

__attribute__((used)) static void pl_add(struct pl_parser *p, bstr entry)
{
    char *s = bstrto0(((void*)0), entry);
    playlist_add_file(p->pl, s);
    talloc_free(s);
}
