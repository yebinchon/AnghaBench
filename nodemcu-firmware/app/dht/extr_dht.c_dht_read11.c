
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int DHTLIB_DHT11_WAKEUP ;
 int DHTLIB_ERROR_CHECKSUM ;
 void* DHTLIB_INVALID_VALUE ;
 int DHTLIB_OK ;
 scalar_t__* dht_bytes ;
 void* dht_humidity ;
 int dht_readSensor (scalar_t__,int ) ;
 void* dht_temperature ;

int dht_read11(uint8_t pin)
{

    int rv = dht_readSensor(pin, DHTLIB_DHT11_WAKEUP);
    if (rv != DHTLIB_OK)
    {
        dht_humidity = DHTLIB_INVALID_VALUE;
        dht_temperature = DHTLIB_INVALID_VALUE;
        return rv;
    }


    dht_humidity = dht_bytes[0];
    dht_temperature = dht_bytes[2];



    uint8_t sum = dht_bytes[0] + dht_bytes[1] + dht_bytes[2] + dht_bytes[3];
    if (dht_bytes[4] != sum) return DHTLIB_ERROR_CHECKSUM;

    return DHTLIB_OK;
}
