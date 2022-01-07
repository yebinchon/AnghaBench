
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int FILE ;


 int assert (int) ;
 int bstr0 (char const*) ;
 int bstr_case_endswith (int ,int ) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int,int *) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int dvd_probe(const char *path, const char *ext, const char *sig)
{
    if (!bstr_case_endswith(bstr0(path), bstr0(ext)))
        return 0;

    FILE *temp = fopen(path, "rb");
    if (!temp)
        return 0;

    bool r = 0;

    char data[50];

    assert(strlen(sig) <= sizeof(data));

    if (fread(data, 50, 1, temp) == 1) {
        if (memcmp(data, sig, strlen(sig)) == 0)
            r = 1;
    }

    fclose(temp);
    return r;
}
