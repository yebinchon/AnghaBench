
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* mp_int_t ;




void mp_binary_set_val_array_from_int(char typecode, void *p, size_t index, mp_int_t val) {
    switch (typecode) {
        case 'b':
            ((signed char*)p)[index] = val;
            break;
        case 128:
        case 'B':
            ((unsigned char*)p)[index] = val;
            break;
        case 'h':
            ((short*)p)[index] = val;
            break;
        case 'H':
            ((unsigned short*)p)[index] = val;
            break;
        case 'i':
            ((int*)p)[index] = val;
            break;
        case 'I':
            ((unsigned int*)p)[index] = val;
            break;
        case 'l':
            ((long*)p)[index] = val;
            break;
        case 'L':
            ((unsigned long*)p)[index] = val;
            break;
        case 'P':
            ((void**)p)[index] = (void*)(uintptr_t)val;
            break;
    }
}
