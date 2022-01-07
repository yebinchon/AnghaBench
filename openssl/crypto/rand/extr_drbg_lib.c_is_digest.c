
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_digest(int type)
{
    switch (type) {
    case 138:
    case 137:
    case 136:
    case 135:
    case 130:
    case 129:
    case 128:
    case 134:
    case 133:
    case 132:
    case 131:
        return 1;
    default:
        return 0;
    }
}
