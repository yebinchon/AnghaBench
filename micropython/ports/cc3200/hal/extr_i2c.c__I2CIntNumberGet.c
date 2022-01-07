
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint32_t ;
typedef size_t int_fast8_t ;


 int ASSERT (int ) ;
 int _I2CBaseValid (scalar_t__ const) ;
 size_t g_i8I2CIntMapRows ;
 scalar_t__** g_ppui32I2CIntMap ;

__attribute__((used)) static uint32_t
_I2CIntNumberGet(uint32_t ui32Base)
{
    int_fast8_t i8Idx, i8Rows;
    const uint32_t (*ppui32I2CIntMap)[2];




    ASSERT(_I2CBaseValid(ui32Base));

    ppui32I2CIntMap = g_ppui32I2CIntMap;
    i8Rows = g_i8I2CIntMapRows;





    for(i8Idx = 0; i8Idx < i8Rows; i8Idx++)
    {



        if(ppui32I2CIntMap[i8Idx][0] == ui32Base)
        {



            return(ppui32I2CIntMap[i8Idx][1]);
        }
    }




    return(0);
}
