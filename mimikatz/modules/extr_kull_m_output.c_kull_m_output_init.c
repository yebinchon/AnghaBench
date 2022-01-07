
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CP_UTF8 ;
 int GetConsoleOutputCP () ;
 int SetConsoleOutputCP (int ) ;
 int _O_U8TEXT ;
 int _fileno (int ) ;
 void* _setmode (int ,int ) ;
 int previousConsoleOutput ;
 void* previousStdErr ;
 void* previousStdOut ;
 int stderr ;
 int stdout ;

void kull_m_output_init()
{


 previousStdOut = _setmode(_fileno(stdout), _O_U8TEXT);
 previousStdErr = _setmode(_fileno(stderr), _O_U8TEXT);

 previousConsoleOutput = GetConsoleOutputCP();
 SetConsoleOutputCP(CP_UTF8);

}
