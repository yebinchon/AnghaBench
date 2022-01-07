
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int bind_devcrypto (int *) ;
 int close_devcrypto () ;
 int engine_devcrypto_id ;
 int open_devcrypto () ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int bind_helper(ENGINE *e, const char *id)
{
    if ((id && (strcmp(id, engine_devcrypto_id) != 0))
        || !open_devcrypto())
        return 0;
    if (!bind_devcrypto(e)) {
        close_devcrypto();
        return 0;
    }
    return 1;
}
