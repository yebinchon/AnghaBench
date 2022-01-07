
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _O_BINARY ;
 int _O_TEXT ;
 int _fileno (int *) ;
 int _setmode (int ,int ) ;

__attribute__((used)) static int app_fsetmod(FILE *fp, char mod)
{
    return _setmode(_fileno(fp), mod == 'b' ? _O_BINARY : _O_TEXT);
}
