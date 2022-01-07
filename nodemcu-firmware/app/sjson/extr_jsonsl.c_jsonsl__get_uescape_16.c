
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET_DIGIT (int) ;

__attribute__((used)) static int
jsonsl__get_uescape_16(const char *s)
{
    int ret = 0;
    int cur;






    cur = jsonsl__digit2int(s[0]); if (cur == -1) { return -1; } ret |= (cur << (12 - (0 * 4)));;
    cur = jsonsl__digit2int(s[1]); if (cur == -1) { return -1; } ret |= (cur << (12 - (1 * 4)));;
    cur = jsonsl__digit2int(s[2]); if (cur == -1) { return -1; } ret |= (cur << (12 - (2 * 4)));;
    cur = jsonsl__digit2int(s[3]); if (cur == -1) { return -1; } ret |= (cur << (12 - (3 * 4)));;

    return ret;
}
