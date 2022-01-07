
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_cmd_t ;


 int talloc_free (int *) ;

void mp_cmd_free(mp_cmd_t *cmd)
{
    talloc_free(cmd);
}
