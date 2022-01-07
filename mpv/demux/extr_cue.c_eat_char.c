
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {char* start; scalar_t__ len; } ;


 struct bstr bstr_cut (struct bstr,int) ;

__attribute__((used)) static bool eat_char(struct bstr *data, char ch)
{
    if (data->len && data->start[0] == ch) {
        *data = bstr_cut(*data, 1);
        return 1;
    } else {
        return 0;
    }
}
