
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t curscript ;
 int fclose (int *) ;
 int free_typebuf () ;
 int * saved_typebuf ;
 int ** scriptin ;
 int typebuf ;

__attribute__((used)) static void
closescript()
{
    free_typebuf();
    typebuf = saved_typebuf[curscript];

    fclose(scriptin[curscript]);
    scriptin[curscript] = ((void*)0);
    if (curscript > 0)
 --curscript;
}
