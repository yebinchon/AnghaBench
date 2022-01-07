
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR (int ) ;
 int QUERY_USER_NUMSLOTS ;
 int * query_user ;

void
query_user_clear(void)
{
    int i;

    for (i = 0; i < QUERY_USER_NUMSLOTS; i++)
    {
        CLEAR(query_user[i]);
    }
}
