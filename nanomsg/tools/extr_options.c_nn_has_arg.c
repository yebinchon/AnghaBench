
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_option {int type; } ;
 int nn_assert (int ) ;

__attribute__((used)) static int nn_has_arg (struct nn_option *opt)
{
    switch (opt->type) {
        case 134:
        case 138:
        case 129:
        case 135:
            return 0;
        case 137:
        case 128:
        case 139:
        case 136:
        case 133:
        case 132:
        case 131:
        case 130:
            return 1;
    }
    nn_assert (0);
}
