
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int INT_GPIOA0 ;
 unsigned int INT_GPIOA1 ;
 unsigned int INT_GPIOA2 ;
 unsigned int INT_GPIOA3 ;

__attribute__((used)) static long
GPIOGetIntNumber(unsigned long ulPort)
{
    unsigned int ulInt;




    switch(ulPort)
    {
        case 131:
        {
            ulInt = INT_GPIOA0;
            break;
        }

        case 130:
        {
            ulInt = INT_GPIOA1;
            break;
        }

        case 129:
        {
            ulInt = INT_GPIOA2;
            break;
        }

        case 128:
        {
            ulInt = INT_GPIOA3;
            break;
        }

        default:
        {
            return(-1);
        }
    }




    return(ulInt);
}
