
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
__attribute__((used)) static long null_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    long ret = 1;

    switch (cmd) {
    case 131:
    case 137:
    case 130:
    case 129:
    case 136:
    case 138:
        ret = 1;
        break;
    case 134:
    case 133:
    case 135:
    case 132:
    case 128:
    default:
        ret = 0;
        break;
    }
    return ret;
}
