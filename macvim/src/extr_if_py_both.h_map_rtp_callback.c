
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * result; int callable; } ;
typedef TYPE_1__ map_rtp_data ;
typedef int char_u ;
typedef int PyObject ;


 int * PyObject_CallFunctionObjArgs (int ,int *,int *) ;
 int * PyString_FromString (char*) ;
 int Py_DECREF (int *) ;
 int * Py_None ;

__attribute__((used)) static void
map_rtp_callback(char_u *path, void *_data)
{
    void **data = (void **) _data;
    PyObject *pathObject;
    map_rtp_data *mr_data = *((map_rtp_data **) data);

    if (!(pathObject = PyString_FromString((char *)path)))
    {
 *data = ((void*)0);
 return;
    }

    mr_data->result = PyObject_CallFunctionObjArgs(mr_data->callable,
         pathObject, ((void*)0));

    Py_DECREF(pathObject);

    if (!mr_data->result || mr_data->result != Py_None)
 *data = ((void*)0);
    else
    {
 Py_DECREF(mr_data->result);
 mr_data->result = ((void*)0);
    }
}
