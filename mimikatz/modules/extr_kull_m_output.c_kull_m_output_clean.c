
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetConsoleOutputCP (int ) ;
 int _fileno (int ) ;
 int _setmode (int ,int ) ;
 int previousConsoleOutput ;
 int previousStdErr ;
 int previousStdOut ;
 int stderr ;
 int stdout ;

void kull_m_output_clean()
{


 _setmode(_fileno(stdout), previousStdOut);
 _setmode(_fileno(stderr), previousStdErr);

 SetConsoleOutputCP(previousConsoleOutput);

}
