
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int BIO_printf (int ,char*,int ) ;
 int BIO_puts (int ,char*) ;
 int * ENGINE_get_first () ;
 int ENGINE_get_id (int *) ;
 int * ENGINE_get_next (int *) ;
 int bio_out ;

__attribute__((used)) static void list_engines(void)
{

    ENGINE *e;

    BIO_puts(bio_out, "Engines:\n");
    e = ENGINE_get_first();
    while (e) {
        BIO_printf(bio_out, "%s\n", ENGINE_get_id(e));
        e = ENGINE_get_next(e);
    }



}
