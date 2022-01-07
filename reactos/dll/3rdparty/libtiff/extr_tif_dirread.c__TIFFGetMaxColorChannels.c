
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
__attribute__((used)) static int _TIFFGetMaxColorChannels( uint16 photometric )
{
    switch (photometric) {
 case 131:
 case 132:
 case 133:
            return 1;
 case 128:
 case 130:
 case 139:
 case 135:
 case 137:
 case 138:
            return 3;
 case 129:
 case 134:
            return 4;
 case 136:
 case 140:
 default:
            return 0;
    }
}
