
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sym ;
struct nn_symbol_properties {int dummy; } ;


 scalar_t__ EINVAL ;
 int nn_assert (int) ;
 scalar_t__ nn_errno () ;
 char* nn_symbol (int,int*) ;
 int nn_symbol_info (int,struct nn_symbol_properties*,int) ;

int main ()
{
    int i;
    struct nn_symbol_properties sym;
    int value;

    nn_assert (nn_symbol (-1, ((void*)0)) == ((void*)0));
    nn_assert (nn_errno () == EINVAL);
    nn_assert (nn_symbol_info (-1, &sym, (int) sizeof (sym)) == 0);

    nn_assert (nn_symbol (2000, ((void*)0)) == ((void*)0));
    nn_assert (nn_errno () == EINVAL);
    nn_assert (nn_symbol_info (2000, &sym, (int) sizeof (sym)) == 0);

    nn_assert (nn_symbol (6, &value) != ((void*)0));
    nn_assert (value != 0);
    nn_assert (nn_symbol_info (6, &sym, (int) sizeof (sym)) == sizeof (sym));

    for (i = 0; ; ++i) {
        const char* name = nn_symbol (i, &value);
        if (name == ((void*)0)) {
            nn_assert (nn_errno () == EINVAL);
            break;
        }
    }

    for (i = 0; ; ++i) {
        if (nn_symbol_info (i, &sym, sizeof (sym)) == 0)
            break;
    }

    return 0;
}
