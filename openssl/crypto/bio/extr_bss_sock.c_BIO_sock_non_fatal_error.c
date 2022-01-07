
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int BIO_sock_non_fatal_error(int err)
{
    switch (err) {
    case 129:







    case 131:



    case 132:




    case 135:




    case 130:



    case 133:



    case 134:

        return 1;
    default:
        break;
    }
    return 0;
}
