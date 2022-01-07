
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NPY_CASTING ;
__attribute__((used)) static const char *
npy_casting_to_string(NPY_CASTING casting)
{
    switch (casting) {
        case 131:
            return "'no'";
        case 132:
            return "'equiv'";
        case 130:
            return "'safe'";
        case 129:
            return "'same_kind'";
        case 128:
            return "'unsafe'";
        default:
            return "<unknown>";
    }
}
