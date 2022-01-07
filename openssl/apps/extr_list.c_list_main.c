
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HELPLIST_CHOICE ;


 int BIO_printf (int ,char*,...) ;
 int FT_cipher ;
 int FT_general ;
 int FT_md ;
 int bio_err ;
 int list_ciphers () ;
 int list_digests () ;
 int list_disabled () ;
 int list_engines () ;
 int list_kdfs () ;
 int list_macs () ;
 int list_missing_help () ;
 int list_objects () ;
 int list_options ;
 int list_options_for_command (int ) ;
 int list_pkey () ;
 int list_pkey_meth () ;
 int list_type (int ,int) ;
 int opt_arg () ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 scalar_t__ opt_num_rest () ;
 int verbose ;

int list_main(int argc, char **argv)
{
    char *prog;
    HELPLIST_CHOICE o;
    int one = 0, done = 0;
    struct {
        unsigned int commands:1;
        unsigned int digest_commands:1;
        unsigned int digest_algorithms:1;
        unsigned int kdf_algorithms:1;
        unsigned int mac_algorithms:1;
        unsigned int cipher_commands:1;
        unsigned int cipher_algorithms:1;
        unsigned int pk_algorithms:1;
        unsigned int pk_method:1;
        unsigned int engines:1;
        unsigned int disabled:1;
        unsigned int missing_help:1;
        unsigned int objects:1;
        unsigned int options:1;
    } todo = { 0, };

    verbose = 0;

    prog = opt_init(argc, argv, list_options);
    while ((o = opt_next()) != 139) {
        switch (o) {
        case 139:
        case 138:
opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            return 1;
        case 137:
            opt_help(list_options);
            break;
        case 132:
            one = 1;
            break;
        case 144:
            todo.commands = 1;
            break;
        case 142:
            todo.digest_commands = 1;
            break;
        case 143:
            todo.digest_algorithms = 1;
            break;
        case 136:
            todo.kdf_algorithms = 1;
            break;
        case 135:
            todo.mac_algorithms = 1;
            break;
        case 145:
            todo.cipher_commands = 1;
            break;
        case 146:
            todo.cipher_algorithms = 1;
            break;
        case 130:
            todo.pk_algorithms = 1;
            break;
        case 129:
            todo.pk_method = 1;
            break;
        case 140:
            todo.engines = 1;
            break;
        case 141:
            todo.disabled = 1;
            break;
        case 134:
            todo.missing_help = 1;
            break;
        case 133:
            todo.objects = 1;
            break;
        case 131:
            list_options_for_command(opt_arg());
            break;
        case 128:
            verbose = 1;
            break;
        }
        done = 1;
    }
    if (opt_num_rest() != 0) {
        BIO_printf(bio_err, "Extra arguments given.\n");
        goto opthelp;
    }

    if (todo.commands)
        list_type(FT_general, one);
    if (todo.digest_commands)
        list_type(FT_md, one);
    if (todo.digest_algorithms)
        list_digests();
    if (todo.kdf_algorithms)
        list_kdfs();
    if (todo.mac_algorithms)
        list_macs();
    if (todo.cipher_commands)
        list_type(FT_cipher, one);
    if (todo.cipher_algorithms)
        list_ciphers();
    if (todo.pk_algorithms)
        list_pkey();
    if (todo.pk_method)
        list_pkey_meth();
    if (todo.engines)
        list_engines();
    if (todo.disabled)
        list_disabled();
    if (todo.missing_help)
        list_missing_help();
    if (todo.objects)
        list_objects();

    if (!done)
        goto opthelp;

    return 0;
}
