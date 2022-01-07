
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int PARSED_COMMAND ;
typedef int * LPTSTR ;
typedef int INT ;


 int Exiting (int *) ;
 scalar_t__ GetNextElement (int **,int **) ;
 int RunInstance (int *) ;
 int _itot (int,int *,int) ;
 int _tcstol (int *,int *,int ) ;

__attribute__((used)) static INT ForLoop(PARSED_COMMAND *Cmd, LPTSTR List, TCHAR *Buffer)
{
    enum { START, STEP, END };
    INT params[3] = { 0, 0, 0 };
    INT i;
    INT Ret = 0;

    TCHAR *Start, *End = List;
    for (i = 0; i < 3 && GetNextElement(&Start, &End); i++)
        params[i] = _tcstol(Start, ((void*)0), 0);

    i = params[START];
    while (!Exiting(Cmd) &&
           (params[STEP] >= 0 ? (i <= params[END]) : (i >= params[END])))
    {
        _itot(i, Buffer, 10);
        Ret = RunInstance(Cmd);
        i += params[STEP];
    }
    return Ret;
}
