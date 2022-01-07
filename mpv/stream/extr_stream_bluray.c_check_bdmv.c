
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int member_1; } ;
typedef TYPE_1__ bstr ;
typedef int FILE ;


 scalar_t__ bstr_startswith0 (TYPE_1__,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int,int *) ;
 int mp_basename (char const*) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static bool check_bdmv(const char *path)
{
    if (strcasecmp(mp_basename(path), "MovieObject.bdmv"))
        return 0;

    FILE *temp = fopen(path, "rb");
    if (!temp)
        return 0;

    char data[50] = {0};

    fread(data, 50, 1, temp);
    fclose(temp);

    bstr bdata = {data, 50};

    return bstr_startswith0(bdata, "MOBJ0100") ||
           bstr_startswith0(bdata, "MOBJ0200") ||
           bstr_startswith0(bdata, "MOBJ0300");
}
