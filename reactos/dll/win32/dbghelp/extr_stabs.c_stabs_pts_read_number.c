
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ParseTypedefData {char* ptr; } ;


 int PTS_ABORTIF (struct ParseTypedefData*,int) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int stabs_pts_read_number(struct ParseTypedefData* ptd, long* v)
{
    char* last;

    *v = strtol(ptd->ptr, &last, 10);
    PTS_ABORTIF(ptd, last == ptd->ptr);
    ptd->ptr = last;
    return 0;
}
