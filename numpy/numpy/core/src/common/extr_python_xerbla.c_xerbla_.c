
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int format ;
typedef int buf ;
typedef int PyGILState_STATE ;


 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int PyGILState_Ensure () ;
 int PyGILState_Release (int ) ;
 int PyOS_snprintf (char*,int,char const*,int,char*,int ) ;

int xerbla_(char *srname, integer *info)
{
        static const char format[] = "On entry to %.*s" " parameter number %d had an illegal value";

        char buf[sizeof(format) + 6 + 4];

        int len = 0;




        while( len<6 && srname[len]!='\0' )
                len++;
        while( len && srname[len-1]==' ' )
                len--;



        PyOS_snprintf(buf, sizeof(buf), format, len, srname, *info);
        PyErr_SetString(PyExc_ValueError, buf);




        return 0;
}
