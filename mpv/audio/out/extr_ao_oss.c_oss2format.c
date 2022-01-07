
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** format_table ;

__attribute__((used)) static int oss2format(int format)
{
    for (int n = 0; format_table[n][0] != -1; n++) {
        if (format_table[n][0] == format)
            return format_table[n][1];
    }
    return 0;
}
