
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ char_u ;


 scalar_t__ Ctrl_O ;
 scalar_t__ NUL ;
 size_t STRLEN (scalar_t__*) ;
 int TRUE ;
 int free_buff (int *) ;
 scalar_t__* get_buffcont (int *,int ) ;
 int last_recorded_len ;
 int recordbuff ;
 scalar_t__ restart_edit ;

char_u *
get_recorded()
{
    char_u *p;
    size_t len;

    p = get_buffcont(&recordbuff, TRUE);
    free_buff(&recordbuff);





    len = STRLEN(p);
    if ((int)len >= last_recorded_len)
    {
 len -= last_recorded_len;
 p[len] = NUL;
    }





    if (len > 0 && restart_edit != 0 && p[len - 1] == Ctrl_O)
 p[len - 1] = NUL;

    return (p);
}
