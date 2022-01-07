
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;
typedef int BIO ;


 int BIO_free (int *) ;
 int FORMAT_TEXT ;
 int * app_load_config_bio (int *,char const*) ;
 int * bio_open_default (char const*,char,int ) ;

CONF *app_load_config(const char *filename)
{
    BIO *in;
    CONF *conf;

    in = bio_open_default(filename, 'r', FORMAT_TEXT);
    if (in == ((void*)0))
        return ((void*)0);

    conf = app_load_config_bio(in, filename);
    BIO_free(in);
    return conf;
}
