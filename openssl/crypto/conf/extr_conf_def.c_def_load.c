
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;
typedef int BIO ;


 scalar_t__ BIO_R_NO_SUCH_FILE ;
 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int CONF_F_DEF_LOAD ;
 int CONF_R_NO_SUCH_FILE ;
 int CONFerr (int ,int ) ;
 scalar_t__ ERR_GET_REASON (int ) ;
 int ERR_R_SYS_LIB ;
 int ERR_peek_last_error () ;
 int def_load_bio (int *,int *,long*) ;

__attribute__((used)) static int def_load(CONF *conf, const char *name, long *line)
{
    int ret;
    BIO *in = ((void*)0);




    in = BIO_new_file(name, "rb");

    if (in == ((void*)0)) {
        if (ERR_GET_REASON(ERR_peek_last_error()) == BIO_R_NO_SUCH_FILE)
            CONFerr(CONF_F_DEF_LOAD, CONF_R_NO_SUCH_FILE);
        else
            CONFerr(CONF_F_DEF_LOAD, ERR_R_SYS_LIB);
        return 0;
    }

    ret = def_load_bio(conf, in, line);
    BIO_free(in);

    return ret;
}
