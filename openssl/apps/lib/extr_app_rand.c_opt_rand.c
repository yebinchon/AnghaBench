
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum r_range { ____Placeholder_r_range } r_range ;


 int OPENSSL_free (int ) ;
 int OPENSSL_strdup (int ) ;




 int loadfiles (int ) ;
 int opt_arg () ;
 int save_rand_file ;

int opt_rand(int opt)
{
    switch ((enum r_range)opt) {
    case 129:
    case 128:
        break;
    case 131:
        return loadfiles(opt_arg());
        break;
    case 130:
        OPENSSL_free(save_rand_file);
        save_rand_file = OPENSSL_strdup(opt_arg());
        break;
    }
    return 1;
}
