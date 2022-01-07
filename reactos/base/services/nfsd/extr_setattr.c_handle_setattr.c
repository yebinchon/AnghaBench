
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int set_class; } ;
typedef TYPE_2__ setattr_upcall_args ;
struct TYPE_10__ {TYPE_2__ setattr; } ;
struct TYPE_12__ {TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;


 int ERROR_NOT_SUPPORTED ;






 int eprintf (char*,int) ;
 int handle_nfs41_link (TYPE_2__*) ;
 int handle_nfs41_remove (TYPE_2__*) ;
 int handle_nfs41_rename (TYPE_2__*) ;
 int handle_nfs41_set_size (TYPE_2__*) ;
 int handle_nfs41_setattr (TYPE_2__*) ;

__attribute__((used)) static int handle_setattr(nfs41_upcall *upcall)
{
    setattr_upcall_args *args = &upcall->args.setattr;
    int status;

    switch (args->set_class) {
    case 132:
        status = handle_nfs41_setattr(args);
        break;
    case 131:
        status = handle_nfs41_remove(args);
        break;
    case 128:
        status = handle_nfs41_rename(args);
        break;
    case 133:
    case 130:
        status = handle_nfs41_set_size(args);
        break;
    case 129:
        status = handle_nfs41_link(args);
        break;
    default:
        eprintf("unknown set_file information class %d\n",
            args->set_class);
        status = ERROR_NOT_SUPPORTED;
        break;
    }

    return status;
}
