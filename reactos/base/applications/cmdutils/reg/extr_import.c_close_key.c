
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int * hkey; int * key_name; } ;


 int RegCloseKey (int *) ;
 int heap_free (int *) ;

__attribute__((used)) static void close_key(struct parser *parser)
{
    if (parser->hkey)
    {
        heap_free(parser->key_name);
        parser->key_name = ((void*)0);

        RegCloseKey(parser->hkey);
        parser->hkey = ((void*)0);
    }
}
