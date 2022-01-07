
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int int8_t ;
typedef scalar_t__ int16_t ;


 scalar_t__ analogRead (int ) ;
 scalar_t__ maxAxisValue ;
 scalar_t__ minAxisValue ;

int16_t axisCoordinate(uint8_t pin, uint16_t origin) {
    int8_t direction;
    int16_t distanceFromOrigin;
    int16_t range;

    int16_t position = analogRead(pin);

    if (origin == position) {
        return 0;
    } else if (origin > position) {
        distanceFromOrigin = origin - position;
        range = origin - minAxisValue;
        direction = -1;
    } else {
        distanceFromOrigin = position - origin;
        range = maxAxisValue - origin;
        direction = 1;
    }

    float percent = (float)distanceFromOrigin / range;
    int16_t coordinate = (int16_t)(percent * 100);
    if (coordinate < 0) {
        return 0;
    } else if (coordinate > 100) {
        return 100 * direction;
    } else {
        return coordinate * direction;
    }
}
