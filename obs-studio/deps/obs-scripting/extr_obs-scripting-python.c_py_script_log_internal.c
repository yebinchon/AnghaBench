
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int base; } ;
struct TYPE_5__ {char* array; } ;
typedef int PyObject ;


 int UNUSED_PARAMETER (int *) ;
 TYPE_1__ cur_py_log_chunk ;
 TYPE_3__* cur_python_script ;
 int dstr_cat (TYPE_1__*,char const*) ;
 int dstr_resize (TYPE_1__*,size_t) ;
 int memmove (char*,char const*,size_t) ;
 int parse_args (int *,char*,int*,char const**) ;
 int * python_none () ;
 int script_log (int *,int,char*,char const*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static PyObject *py_script_log_internal(PyObject *self, PyObject *args,
     bool add_endl)
{
 static bool calling_self = 0;
 int log_level;
 const char *msg;

 UNUSED_PARAMETER(self);

 if (calling_self)
  return python_none();
 calling_self = 1;



 if (!parse_args(args, "is", &log_level, &msg))
  goto fail;
 if (!msg || !*msg)
  goto fail;

 dstr_cat(&cur_py_log_chunk, msg);
 if (add_endl)
  dstr_cat(&cur_py_log_chunk, "\n");

 const char *start = cur_py_log_chunk.array;
 char *endl = strchr(start, '\n');

 while (endl) {
  *endl = 0;
  if (cur_python_script)
   script_log(&cur_python_script->base, log_level, "%s",
       start);
  else
   script_log(((void*)0), log_level, "%s", start);
  *endl = '\n';

  start = endl + 1;
  endl = strchr(start, '\n');
 }

 if (start) {
  size_t len = strlen(start);
  if (len)
   memmove(cur_py_log_chunk.array, start, len);
  dstr_resize(&cur_py_log_chunk, len);
 }



fail:
 calling_self = 0;
 return python_none();
}
